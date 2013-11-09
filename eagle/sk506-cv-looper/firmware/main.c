//---------------------------------------------------------------------------------------------
//	SK505 CV-Looper
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
#include <avr/pgmspace.h> 	
#include <avr/wdt.h>		// include watchdog timer support
#include <avr/interrupt.h>
#include <util/delay.h>

// ==============================================================================
// Globals
// ------------------------------------------------------------------------------

uint8_t 			table [256];	// 256 frames / 25fps -> ca 10 seconds loop time
volatile uint16_t	reference;
volatile uint8_t 	x_in, y_in;
uint8_t 			ad_idx;
volatile uint8_t 	is_recording;
volatile uint8_t 	was_recording;
volatile uint8_t	framecount;
volatile uint8_t	endcount;


// ==============================================================================
// Functions
// ------------------------------------------------------------------------------

void ad_start_conversion() {
 		ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
		ADCSRA |= (1 << ADSC);			// start conversion
}

void ad_set_channel(uint8_t chan) {
	ADMUX 	= (1 << REFS1) | (chan & 0x03); 			// Internal 1.1V Voltage Reference.
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
		
		y_in = to_scale(temp);
		
		ad_set_channel(ad_idx);
		ad_start_conversion();
}

ISR(INT0_vect){
	is_recording = ~PINB & (1 << 0);
	
	if (is_recording != was_recording) {
	
		if (was_recording) { 
			endcount = framecount + 1;
		} else {
			end_count = 251;
		}
		framecount = 0;
		was_recording = is_recording;
	
	} else {
		framecount++;
			
		if (framecount >= endcount){
			if (is_recording) {
				is_recording = 0;
				was_recording = 0;
				endcount = framecount;
			} 
			framecount = 0;
		}
	}
}

void pwm_on(void) {
	// setup timer 0 PWM on OC0B (pin pb1)
	TCCR0A = (1 << COM0B1) | (1 << WGM01) | (1 << WGM00);		// fast pwm, clear oc0b on compare match
	TCCR0B = (1 << CS00);		// start timer no prescaler -> 8Mhz / 256 -> 32 khz PWM
}


void pwm_off(void) {
	TCCR0A = 0;
	TCCR0B = 0;
}

// ------------------------------------------------------------------------------
// Init

void init (void) {
	// setup Ports
	// 	PB5 	PB4		PB3		PB2		PB1		PB0
	//	RESET	Y-IN	X-IN	Sync	Y-OUT	BTN
	
	DDRB = 	(1 << 1);	// output for PWM
	PORTB = (1 << 0); 	// pullup on Button
	
	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64

	ad_idx = 2;
	ad_set_channel(ad_idx);
	ad_start_conversion();

	// INT 0 interrupt on V-Sync Input
	MCUCR = (1 << ISC01) | (1 << ISC00); // rising edge of odd/even generates interrupt
	GIMSK = (1 << INT0);				// enable interrupt
	sei();
}

// ==============================================================================
// includes
// ------------------------------------------------------------------------------

int main (void) {
	init();

	uint8_t		 	y_out;
	uint16_t		frameout;
	
	reference = 930; 	// voltage reference is 1.1V - cv-max is 1V
	
	while(1) {
	
		check_ad();	
		
		if (frameout != framecount) {
			cli();
			frameout = framecount;
			if (is_recording) { 
				table[framecount] = y_in;
			}
			y_out = table[framecount];
			sei();
			
			if (y_out == 0) {
				pwm_off();
				PORTB &= ~(1 << 1);			// turn off pin
			} else if (y_out == 255) {
				pwm_off();
				PORTB |= (1 << 1);			// turn on pin
			} else {
				OCR0B = y_out;
				pwm_on();
			}
		}
	}
	return 0;
}