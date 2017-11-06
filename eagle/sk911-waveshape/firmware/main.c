//---------------------------------------------------------------------------------------------
//	SK910	Waveshaper										ATMEGA88
//
//	Sample one vertical "line" of video as a wave and play it back at any frequency
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
unsigned char x_pos;

// default sine wave, so you can use this module as a sine oscillator by tying PB3 to ground....
unsigned char table[256] = {0x80,0x83,0x86,0x89,0x8c,0x8f,0x92,0x95,0x98,0x9b,0x9e,0xa2,0xa5,0xa7,0xaa,0xad,0xb0,0xb3,0xb6,0xb9,0xbc,0xbe,0xc1,0xc4,0xc6,0xc9,0xcb,0xce,0xd0,0xd3,0xd5,0xd7,0xda,0xdc,0xde,0xe0,0xe2,0xe4,0xe6,0xe8,0xea,0xeb,0xed,0xee,0xf0,0xf1,0xf3,0xf4,0xf5,0xf6,0xf8,0xf9,0xfa,0xfa,0xfb,0xfc,0xfd,0xfd,0xfe,0xfe,0xfe,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xfe,0xfe,0xfe,0xfd,0xfd,0xfc,0xfb,0xfa,0xfa,0xf9,0xf8,0xf6,0xf5,0xf4,0xf3,0xf1,0xf0,0xee,0xed,0xeb,0xea,0xe8,0xe6,0xe4,0xe2,0xe0,0xde,0xdc,0xda,0xd7,0xd5,0xd3,0xd0,0xce,0xcb,0xc9,0xc6,0xc4,0xc1,0xbe,0xbc,0xb9,0xb6,0xb3,0xb0,0xad,0xaa,0xa7,0xa5,0xa2,0x9e,0x9b,0x98,0x95,0x92,0x8f,0x8c,0x89,0x86,0x83,0x80,0x7c,0x79,0x76,0x73,0x70,0x6d,0x6a,0x67,0x64,0x61,0x5d,0x5a,0x58,0x55,0x52,0x4f,0x4c,0x49,0x46,0x43,0x41,0x3e,0x3b,0x39,0x36,0x34,0x31,0x2f,0x2c,0x2a,0x28,0x25,0x23,0x21,0x1f,0x1d,0x1b,0x19,0x17,0x15,0x14,0x12,0x11,0xf,0xe,0xc,0xb,0xa,0x9,0x7,0x6,0x5,0x5,0x4,0x3,0x2,0x2,0x1,0x1,0x1,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x1,0x1,0x1,0x2,0x2,0x3,0x4,0x5,0x5,0x6,0x7,0x9,0xa,0xb,0xc,0xe,0xf,0x11,0x12,0x14,0x15,0x17,0x19,0x1b,0x1d,0x1f,0x21,0x23,0x25,0x28,0x2a,0x2c,0x2f,0x31,0x34,0x36,0x39,0x3b,0x3e,0x41,0x43,0x46,0x49,0x4c,0x4f,0x52,0x55,0x58,0x5a,0x5d,0x61,0x64,0x67,0x6a,0x6d,0x70,0x73,0x76,0x79,0x7c};
unsigned char table_read_idx;
unsigned char do_sample_video;
unsigned int cv_input;

unsigned char fast_mode;
unsigned char ramp_input;


// ==============================================================================
// Functions
// ------------------------------------------------------------------------------



// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	DDRB = (1 < PB1);		//Osc_Out
	DDRC = (1 << PC4); 		//pulse out
	DDRD = 0xFF; // R2R Ladder DAC
	
	PORTC |= (1 << PC3); 	// pullup for fast/slow, switch
	PORTB |= (1 << PB3); 	// pullup for rec switch
	PORTB |= (1 << PB0);	// pullup for osc/ramp, switch
	
	
	
	// Pin change Interrupts
	// HSYNC on PC5 = PCINT13
	// Odd/EVEN on PB2 = PCINT2
	PCICR 	= (1 << PCIE1) | (1 << PCIE0);
	PCMSK1 	= (1 << PCINT13);
	PCMSK0  = (1 << PCINT2);
	
	// Timer 0 : H-Sync Pulse Delay max 64us  @ 20Mhz = 1280 Clock Cycles
	//												Prescaler 8 -> OCR0 0-160 (better something like 10-150...?)
	x_pos  = 150;
	TCCR0A = 0; 				// Normal mode, no OC= pins connected
	TIMSK0 = ( 1 << OCIE0A);	// Output compare interrupt enabled
								// Timer still stopped
	
	
	// ------------------		ADC
	//"By default, the successive approximation circuitry requires an input clock frequency between 50kHz and 200kHz to get maximum resolution"
	// "A normal conversion takes 13 ADC clock cycles. The first conversion after the ADC is switched "
	// Max 200kHz @ 20 MHz -> >1700 clk cycles... to slow for 16khz sampling
	
	ADCSRA 	= (1 << ADEN | 1 << ADATE | 1 << ADIE);						// Enable ADC
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1);								// prescaler 64
	ADMUX = (1 << ADLAR);												// we're only reading 8bits, so left adjust result
	ADCSRB	= (1 << ADTS1) | (1 << ADTS0);								// Trigger ADC on Timer 0 COMPA
	ADCSRA |= (1 << ADSC);												// Start Conversion
	
	// Timer 1 : speed of reading back samples -> output frequency
	// 
	OCR1AL = 0xdf;
	TCCR1A = ( 1 << COM1A0 );						// Toggle OC1A on compare match, 
	TCCR1B = ( 1 << WGM12 | 1 << CS10);				// CTC Mode, no prescaler @20mhz / 256 -> max 78.125khz sampling rate
	TIMSK1 = (1 << OCIE1A); 

	wdt_enable(WDTO_30MS);			// enable watchdog timer
	sei();
}




// ------------------------------------------------------------------------------
// 													odd/even - vertical blanking
// 											on one field sample cv, on other video
ISR (PCINT0_vect) {  						
	line_idx = 0;	
	if (PINB & (1 << PB2)) {
		if (PINB & (1 << PB3))	{		
			do_sample_video = 1;
			ADCSRA |= (1 << ADPS2) | (1 << ADPS1);								// prescaler 64
			ADMUX = (1 << ADLAR);												// adc0
		}
	} else {
		ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS1);								// prescaler 128 for 10bit resolution

		ADMUX = (1 << ADLAR) | 1;		
		do_sample_video = 0;
	}
	
	if (PINC & (1 << PC3)) {	
		fast_mode = 1;
	} else {
		fast_mode = 0;
	}
	
	if (PINB & (1 << PB0)) {	
		ramp_input = 0;
		TCCR1B |= (1 << CS10);				// run with no prescaler
	} else {
		ramp_input = 1;
		TCCR1B &= ~(1 << CS10);				//stop timer		
	}
}

// ------------------------------------------------------------------------------
// 														H-Sync

ISR (PCINT1_vect) {
	// Start Timer -> Pulse delay
	OCR0A 	= x_pos;
	TCCR0B |= ( 1 << CS01 );		// clk/8 prescaler -> start timer
	line_idx++;
}  

// ------------------------------------------------------------------------------
// 														Pulse Start
ISR (TIMER0_COMPA_vect) {
	PORTC |= (1 << 4);	
	TCCR0B &= ~( 1 << CS01 );		// stop timer  - adc is started automatically by interrupt
}


// ------------------------------------------------------------------------------
// 														ADC complete interrupt

ISR (ADC_vect) {
	PORTC &= ~(1 << 4);					//stop pulseout
	if (do_sample_video) {
		if (line_idx > 35) {
			if (line_idx < 292) {
				table[line_idx - 36] = ADCH;
			}
		}
	} else {
		if (line_idx == 50) {
			if (ramp_input) {
				cv_input = ADCH;
				PORTD = table[cv_input];
			} else {
				cv_input = (ADCL | ADCH << 2);				// Left adjusted ADC result
				cv_input = 1024 - cv_input;
			
				cv_input = cv_input + 20;				// keep minimum 20 clks -> 1MHZ overflow / 256 Table size -> 3.9kHz fastest
			
				if (!fast_mode) {
					cv_input *= 16;				
				}
			
				OCR1AL = (unsigned char)cv_input;
				OCR1AH = (unsigned char)(cv_input >> 8);
			}
			
			ADCSRA |= (1 << ADPS2) | (1 << ADPS1);								// prescaler 64
			ADMUX = (1 << ADLAR) | 2;												// adc02
				

		} else if (line_idx == 120) {
			cv_input = ADCH;
			cv_input /= 2;
			if (cv_input > 1) {						// only if there seems to be signal
				x_pos = cv_input + 10;
			}
			ADCSRA |= (1 << ADPS2) | (1 << ADPS1);								// prescaler 64
			ADMUX = (1 << ADLAR) ;												// adc0
		}
	}
}

// ------------------------------------------------------------------------------
// 														Timer 1 Overflow: output next sample

ISR (TIMER1_COMPA_vect) {
	PORTD = table[table_read_idx++];
} 


// ==============================================================================
// main
// ------------------------------------------------------------------------------

int main (void) {

	
	init();

	while(1) {
		wdt_reset();		
	}
	return 0;
}	