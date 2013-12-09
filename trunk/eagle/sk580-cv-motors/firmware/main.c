//---------------------------------------------------------------------------------------------
//	SK580	CV Motors										ATMEGA88
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2013 Michael Egger, Licensed under GNU GPLv3
//
//--------------------------------------------------------------------------------------------
// ==============================================================================
// includes
// ------------------------------------------------------------------------------
// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>			// include I/O definitions (port names, pin names, etc)
#include <avr/wdt.h>		// include watchdog timer support
#include <avr/interrupt.h>	// include interrupt support

// ==============================================================================
// Globals
// ------------------------------------------------------------------------------
volatile uint32_t	ticks,last_ticks;
uint16_t 			reference;
uint8_t				y_in[3];
uint8_t				ad_idx;

uint8_t 			table [3][256];	// 250 samples @ 50Hz -> 10 seconds

volatile uint8_t 	is_dubbing;

volatile uint8_t	x_in;

uint8_t did_tick;


#define led_toggle()	PORTB ^= (1 << 7)
#define led_on()		PORTB |= (1 << 7)
#define led_off()		PORTB &= ~(1 << 7)

// ==============================================================================
// Functions
// ------------------------------------------------------------------------------

uint32_t millis() {
	uint32_t m;
	uint8_t oldSREG = SREG;

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
	m = ticks;
	SREG = oldSREG;

	return m;
}

void ad_start_conversion() {
 		ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
		ADCSRA |= (1 << ADSC);			// start conversion
}

void ad_set_channel(uint8_t chan) {
	ADMUX 	= (1 << REFS1) | chan ; 			// Internal 1.1V Voltage Reference.
														// Cannot use external reference (must be min 2 Volts)
}

uint16_t ad_Read10bit (void) {
 	return (ADCL | ADCH << 8);
 }

uint8_t to_scale(uint16_t in) {	
	uint32_t t;
	t = (uint32_t)in * 255;
	t /= reference;
	if (t > 255) t = 255;
	return (uint8_t)t ;
}

// ------------------------------------------------------------------------------
// Check Analog Inputs

void check_ad(void){
		if ((ADCSRA & (1 << ADSC))) return; // not finished with last conversion
		
		uint16_t temp;
		temp = ad_Read10bit();
		
		if ( ad_idx < 3) {
			y_in[ad_idx] = to_scale(temp);
			ad_idx ++;
		}
		
		if (ad_idx == 7) {
			x_in = to_scale(temp);
			ad_idx = 0;
		}

		if (ad_idx >= 3) { 
			ad_idx = 7;
		} 
		ad_set_channel(ad_idx);
		ad_start_conversion();
}


void pwm_1(uint8_t outval) {

		if (outval == 0) {
			// setup timer 1 PWM on OC1A (pin pb1)
				TCCR1A &= ~(1 << COM1A1);
				PORTB &= ~(1 << 1);			// turn off pin
			} else if (outval == 255) {
				TCCR1A &= ~(1 << COM1A1);
				PORTB |= (1 << 1);			// turn on pin
			} else {
				OCR1AL = outval;
				TCCR1A |= (1 << COM1A1);
			}
}

void pwm_2(uint8_t outval) {

		if (outval == 0) {
			// setup timer 1 PWM on OC1B (pin pb2)
				TCCR1A &= ~(1 << COM1B1);
				PORTB &= ~(1 << 2);			// turn off pin
			} else if (outval == 255) {
				TCCR1A &= ~(1 << COM1B1);
				PORTB |= (1 << 2);			// turn on pin
			} else {
				OCR1BL = outval;
				TCCR1A |= (1 << COM1B1);
			}
}

void pwm_3(uint8_t outval) {

		if (outval == 0) {
			// setup timer 2 PWM on OC2A (pin pb3)
				TCCR2A &= ~(1 << COM2A1);
				PORTB &= ~(1 << 3);			// turn off pin
			} else if (outval == 255) {
				TCCR2A &= ~(1 << COM2A1);
				PORTB |= (1 << 3);			// turn on pin
			} else {
				OCR2A = outval;
				TCCR2A |= (1 << COM2A1);
			}

}

// ------------------------------------------------------------------------------
// Count Milliseconds

ISR(TIMER0_COMPA_vect)
{
	ticks++;
	did_tick = 1;
}



// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	// setup Ports
	// PWM output on pb1, pb2, pb3
	
	DDRB = 	(1 << 1) | (1 << 2) | (1 << 3) ;	// output for PWM
	DDRB |= (1 << 7); // LED
	
	PORTD = (1 << 7) | (1 << 6) | (1 << 5) | (1 << 2) | (1 << 0);		// pullups


	// timer 0	-> ticking clock
	last_ticks = 0;
	ticks 	= 0;
	TCCR0A 	= (1 << WGM01);								// CTC
	TCCR0B 	= (0 << CS02) | (1 << CS01) | (1 << CS00);	// 64 prescaler @ 8Mhz -> 125'000 Hz
	TIMSK0 	= (1 << OCIE0A);								// enable interrupt
	OCR0A	= 124;											// 1000 Hz -> Milliseconds
	sei();
	
	
	// setup timer 1 PWM
	TCCR1A = (1 << WGM10);							// fast pwm 8bit
	TCCR1B = (1 << CS10) 	| (1 << WGM12);			// start timer no prescaler -> 8Mhz / 256 -> 32 khz PWM


	// setup timer 2 PWM
	TCCR2A = (1 << WGM20) | (1 << WGM21);							// fast pwm 8bit
	TCCR2B = (1 << CS22) | (1 << CS21);			// start timer no prescaler -> 8Mhz / 256 -> 32 khz PWM

	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64

	ad_idx = 0;
	ad_set_channel(ad_idx);
	ad_start_conversion();

	wdt_enable(WDTO_30MS);			// enable watchdog timer
}



// ==============================================================================
// includes
// ------------------------------------------------------------------------------

int main (void) {

	init();

	uint8_t			old_x;
	uint8_t			i;
	uint16_t		frameout;
	
	reference = 930; 	// voltage reference is 1.1V - cv-max is 1V		

	while(1) {
		wdt_reset();
		
		check_ad();	
		
		if (old_x != x_in) {
			old_x = x_in;
			
			led_off();

			for (i = 0; i < 3 ; i++) {
				is_dubbing 		= ~PIND & (1 << (7-i));
	
				if (is_dubbing) { 
					table[i][x_in] = y_in[i];
					led_on();
				}
			}	
		
			pwm_1 (table[0][x_in]);
			pwm_2 (table[1][x_in]);
			pwm_3 (table[2][x_in]);
	
		}

	}
	return 0;
}	