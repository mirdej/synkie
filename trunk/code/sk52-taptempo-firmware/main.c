// ==============================================================================
// main.c
// firmware for a device based on the gnusb - OPEN SOURCE USB SENSOR BOX
//
// License:
// The project is built with AVR USB driver by Objective Development, which is
// published under an own licence based on the GNU General Public License (GPL).
// gnusb is also distributed under this enhanced licence. See Documentation.
//
// target-cpu: ATMega16 @ 12MHz
// created 2007-01-28 Michael Egger me@anyma.ch
//
// ==============================================================================

#include <stdint.h>
#include <avr/io.h>				// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>		// include interrupt support
#include <util/atomic.h>




// ==============================================================================
// - Misc. constants
// ------------------------------------------------------------------------------
enum { OFF = 0, ON = 1 };
enum { SWITCHES_OFF = 0, SWITCH1 = 1, SWITCH2 = 2 };

#define TCCR_CLK_DIV_1024 5
#define MCUCR_EXT_INT0_EDGE_MASK 3
#define MCUCR_EXT_INT0_FALLING_EDGE 2


// ==============================================================================
// - Hardware configuration
// ------------------------------------------------------------------------------
// LED = PORTA 0 inverted
// Switch 1 = PORTA 2 direct
// Switch 2 = PORTA 1 direct

// LED
#define LED_PORT PORTA
#define LED_DDR DDRA
#define LED_BIT0 0
#define LED_NBITS 4
#define LED_MASK (((1 << LED_NBITS) - 1) << LED_BIT0)

#define TURN_LED_ON(n) LED_PORT &= ~_BV(n + LED_BIT0)
#define TURN_LED_OFF(n) LED_PORT |= _BV(n + LED_BIT0)
#define SET_LEDS(bits) LED_PORT = (LED_PORT & ~LED_MASK) | ~bits;

// Switches
#define SWITCH_PORT PORTA
#define SWITCH_DDR DDRA
#define SWITCH_PIN PINA
#define SWITCH1_BIT 5
#define SWITCH2_BIT 4

#define IS_SWITCH1_ON(bits) ((bits & _BV(SWITCH1_BIT)) == 0)
#define IS_SWITCH2_ON(bits) ((bits & _BV(SWITCH2_BIT)) == 0)

// Output
#define OUT_PORT PORTD
#define OUT_DDR DDRD
#define OUT_BIT0 4
#define OUT_NBITS 4
#define OUT_MASK (((1 << OUT_NBITS) - 1) << OUT_BIT0)


// ==============================================================================
// - Globals
// ------------------------------------------------------------------------------
// Interrupt <-> main loop communciation 
volatile uint8_t switches_toggled = 0;
volatile uint8_t led_request = 0;
volatile uint8_t timer1_carry = 0;
volatile uint8_t output_state = 0;

// Helpers
#define OCR_FOR_INTERVAL(intv) ((intv + 8) / 16)
#define CALC_INTERVAL(time, count) ((time + count/2) / count)

#define MIN_INTERVAL 1024

// ==============================================================================
// - External Interrupt (V-Sync)
// ------------------------------------------------------------------------------
ISR(INT0_vect) {
	SET_LEDS(led_request);
	led_request = 0;
	
	uint8_t old_out_port = OUT_PORT;
	OUT_PORT = (old_out_port & ~(OUT_MASK)) | (~output_state << OUT_BIT0);
	
	static uint8_t prev_switch_state = 0;
	
	uint8_t cur_switch_state = SWITCH_PIN;
	if (IS_SWITCH1_ON(cur_switch_state) && !IS_SWITCH1_ON(prev_switch_state))
		switches_toggled |= SWITCH1;
	if (IS_SWITCH2_ON(cur_switch_state) && !IS_SWITCH2_ON(prev_switch_state))
		switches_toggled |= SWITCH2;
	prev_switch_state = cur_switch_state;
}


// ==============================================================================
// - Timer 1 Overflow Interrupt
// ------------------------------------------------------------------------------
ISR(TIMER1_OVF_vect) {
	++timer1_carry;
}

// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{
	// ------------------------- Initialize Hardware
	
	// Default setup: all pins input, pull-ups on everywhere.
	// DDRs are set to input by default; but we have to turn the pull-ups on.
	PORTA 	= 0xFF;
	PORTB 	= 0xFF;
	PORTC 	= 0xFF;
	PORTD	= 0xFF;
	
	// Now set up the ports we use.
	LED_DDR |= LED_MASK;
	OUT_PORT &= ~OUT_MASK;
	OUT_DDR |= OUT_MASK;
	
	// Timer 1 setup:
	// Normal mode, cpu clock / 1024
	TCCR1A = 0x00;
	TCCR1B = TCCR_CLK_DIV_1024;
	TIMSK |= _BV(TOIE1);
	
	// Ext interrupt setup
	MCUCR &= ~MCUCR_EXT_INT0_EDGE_MASK;
	MCUCR |= MCUCR_EXT_INT0_FALLING_EDGE;
	GICR |= _BV(INT0);
	
	sei();
	
	// ------------------------- Main Loop
	uint8_t tapping = 0;
	uint16_t cur_interval = 0;
	uint32_t next_interval_sum = 0;
	uint8_t next_interval_count = 0;
	
	while(1) {
		// Turn off interrupts while getting values from interrupt handlers
		uint8_t next_switches;
		uint8_t timer1_hi;
		uint16_t timer1_lo;
		ATOMIC_BLOCK(ATOMIC_FORCEON)
		{
			timer1_hi = timer1_carry;
			timer1_lo = TCNT1;
			next_switches = switches_toggled;
			switches_toggled = SWITCHES_OFF;
		}
		uint32_t timer1_val = ((uint32_t)timer1_hi << 16) + timer1_lo;
		
		// check switch 1 = start tapping / realign
		if ((next_switches & SWITCH1) != 0) {
			TCNT1 = 0;
			timer1_carry = 0;
			timer1_val = 0;
			OCR1A = OCR_FOR_INTERVAL(cur_interval);
			TIFR |= _BV(OCF1A);
			
			tapping = ON;
			led_request = (1 << LED_NBITS) - 1;
			
			output_state = 0;
			next_interval_sum = 0;
			next_interval_count = 0;
		}
		// check switch 2 = tap
		else if (tapping && (next_switches & SWITCH2) != 0 && timer1_val > MIN_INTERVAL) {
			++next_interval_count;
			next_interval_sum = timer1_val;
			uint16_t new_interval = CALC_INTERVAL(next_interval_sum, next_interval_count);
			if (new_interval > MIN_INTERVAL) {
				cur_interval = new_interval;
			}
			OCR1A = next_interval_sum + OCR_FOR_INTERVAL(cur_interval);
		}
		// check Timer 1 Compare Match = tick
		if (TIFR & _BV(OCF1A)) {
			OCR1A += OCR_FOR_INTERVAL(cur_interval);
			TIFR |= _BV(OCF1A);
			
			uint8_t old_outstate = output_state;
			output_state = (old_outstate + 1) & (_BV(OUT_NBITS) - 1);
			
			led_request = old_outstate & ~output_state;
			
			if (tapping && timer1_val && cur_interval > MIN_INTERVAL) {
				uint32_t since_last_tap = timer1_val - next_interval_sum;
				if (
					(next_interval_count > 0 && (since_last_tap > 2*cur_interval))
					|| (since_last_tap > 7*cur_interval)
				) {
					tapping = OFF;
					next_interval_count = 0;
					next_interval_sum = 0;
				}
			}
		}
	}
	return 0;
}

