//---------------------------------------------------------------------------------------------
//	SK720	8 Step Sequencer										ATMEGA88
//
//
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



// ==============================================================================
// Functions
// ------------------------------------------------------------------------------



// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	
	//PORTB:  ODD/even input, SPI
	PORTB 	= (1 << PC0);	//pull up sync in??
	
	//PORTC
	DDRC 	= (1 << PC2) | (1 << PC1) | (1 << PC0); 		// Address Output
	PORTC 	= (1 << PC4) | (1 << PC3); 						// pullup for trigger & reset inputs
	
	//PORTD:	Muxes
	DDRD 	= 0xff;
	
	// Pin change Interrupts:
	// Trigger on PCINT11
	// Reset on PCINT12	
	// Odd/EVEN on PCINT0
	PCICR 	= (1 << PCIE1) | (1 << PCIE0);
	PCMSK1 	= (1 << PCINT13);
	PCMSK0  = (1 << PCINT12);
		
	
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