//---------------------------------------------------------------------------------------------
//	SK505 Lookup Table / CV-Looper
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

uint8_t 	table [256];
volatile uint16_t	ref_in;
volatile uint8_t 	x_in, y_in;
uint8_t 	ad_idx;
uint8_t 	is_recording;
uint8_t		test;


volatile unsigned long milliseconds; 
ISR(TIMER1_COMPA_vect)  { milliseconds++;} 
unsigned long millis() { return milliseconds; } 

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
	t /= ref_in;
	if (t > 255) t = 255;
	return (uint8_t)t ;
}

// ------------------------------------------------------------------------------
// Check Analog Inputs

void check_ad(void){
		if ((ADCSRA & (1 << ADSC))) return; // not finished with last conversion
		
		uint16_t temp;
		temp = ad_Read10bit();
		
		if (ad_idx == 1) {
			ref_in = temp;
			ad_idx = 2;
		} else if (ad_idx == 2) {	// 
				ad_idx = 3;
				y_in = to_scale(temp);
		} else {
				ad_idx = 1;
				x_in = to_scale(temp);
		}
		
		ad_set_channel(ad_idx);
		ad_start_conversion();
}

void check_btn(void){
	is_recording = ~PINB & (1 << 2);
}

// ------------------------------------------------------------------------------
// Init

void init (void) {
	// setup Ports
	// 	PB5 	PB4		PB3		PB2		PB1		PB0
	//	RESET	Y-IN	X-IN	REF		Y-OUT	BTN
	
	DDRB = 	(1 << 1);	// output for PWM
	PORTB = (1 << 0); 	// pullup on Button
	
	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64

	ad_idx = 1;
	ad_set_channel(ad_idx);
	ad_start_conversion();

	// setup timer 0 PWM on OC0B (pin pb1)
	TCCR0A = (1 << COM0B1) | (1 << WGM01) | (1 << WGM00);		// fast pwm, clear oc0b on compare match
	TCCR0B = (1 << CS01);										// 8 prescaler -> 1Mhz / 256 -> 3.9 khz PWM
	
	// setup timer 1 for debouncing stuff
    TCCR1 = (1<<CTC1)|(7<<CS10);   // CTC  mode, div64 
    OCR1C = 0.001 * F_CPU/64 - 1;  // 1ms, F_CPU @16MHz, div64 
    TIMSK |= (1<<OCIE1A); 
	sei();
}

// ==============================================================================
// includes
// ------------------------------------------------------------------------------

int main (void) {
	init();
	
	unsigned int last_millis;
	unsigned int now;
	
	while(1) {
	
		check_ad();	
		now = millis();
		
		if (now - last_millis > 10) {
			last_millis = now;
			OCR0B = x_in;
		}
		//check_btn();
	//	is_recording = 1;
	//	if (is_recording) { 
//			table[x_in] = y_in;
//		}
		//OCR0B = table[y_in];
		
	}
	return 0;
}