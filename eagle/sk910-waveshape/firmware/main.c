//---------------------------------------------------------------------------------------------
//	SK910	Waveshaper										ATMEGA88
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2017 Michael Egger, Licensed under GNU GPLv3
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

unsigned int line_idx;
unsigned char table[256];
unsigned char table_read_idx;
unsigned char do_sample_video;

// ==============================================================================
// Functions
// ------------------------------------------------------------------------------



// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	
	DDRD = (1 << PD6); 	// PWM OUt
	
	EICRA 	= ( 1 << ISC10 | 1 << ISC01 ); 					// Any logical change on INT1 generates an interrupt request. - odd/even
																		// The falling edge of INT0 generates an interrupt request.	- pulse
	EIMSK = ( 1 << INT1 | 1 << INT0);									// enable INT1 and INT0
	
	ADCSRA 	= (1 << ADEN | 1 << ADATE | 1 << ADIE);						// Enable ADC , trigger on interrupt 0
	ADCSRB	= (1 << ADTS1);	
	ADCSRA |= 1<<ADSC;		// Start Conversion

	// Timer 0 : PWM Output
	TCCR0A = ( 1 << COM0A1 | 1 << WGM01 | 1  << WGM00); 
	TCCR0B = ( 1 << CS00);							// CTC Mode, no prescaler @8mhz / 256 -> 31.25khz sampling rate
	TIMSK0 = ( 1 << TOIE0);
	
	// Timer 1 : speed of reading back samples -> output frequency
	TCCR1A = ( 1 << COM1A0 );						// Toggle OC1A/OC1B on compare match, 
	TCCR1B = ( 1 << WGM12 | 1 << CS11);				// CTC Mode, prescaler 8
		//befor: no prescaler @8mhz / 256 -> max 31.25khz sampling rate
	TIMSK1 = (1 << OCIE1A); 

	wdt_enable(WDTO_30MS);			// enable watchdog timer
	sei();
}

// ------------------------------------------------------------------------------
// 													odd/even - vertical blanking
// 											on one field sample cv, on other video
ISR (INT1_vect) {  						
	line_idx = 0;
	if (PIND & (1 << PD3)) {			
		do_sample_video = 1;
		ADMUX = 0;
	} else {
		ADMUX = 1;
		do_sample_video = 0;
	}
}

// ------------------------------------------------------------------------------
// 														dummy for ADC trigger

ISR (INT0_vect) {}  

// ------------------------------------------------------------------------------
// 														ADC interrupt

ISR (ADC_vect) {
	if (do_sample_video) {
		if (line_idx > 35) {
			if (line_idx < 292) {
				table[line_idx - 36] = ((ADCL | ADCH << 8)>>2);
			}
		}
	} else {
		if (line_idx == 50) {
			unsigned int cv_input;
			cv_input = (ADCL | ADCH << 8);
			cv_input = 1024-cv_input;
			cv_input += 4;
			OCR1AL = (unsigned char)cv_input;
			OCR1AH = (unsigned char)(cv_input >> 8);
		}
	}
	line_idx++;
}

// ------------------------------------------------------------------------------
// 														Timer 1 Overflow: output next sample

ISR (TIMER1_COMPA_vect) {
	table_read_idx++;
} 

// ------------------------------------------------------------------------------
// 														Timer 0 Overflow: adjust pwm

ISR (TIMER0_OVF_vect) {
	OCR0A = table[table_read_idx];
} 

// ==============================================================================
// main
// ------------------------------------------------------------------------------

int main (void) {

	
	init();
	unsigned char i;
	for (i=0;i<254;i++) {table[i]=i;}
	OCR1AL = 0xdf;

	while(1) {
		wdt_reset();
	}
	return 0;
}	