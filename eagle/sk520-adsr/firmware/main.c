// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>				// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>		// include interrupt support
#include <avr/wdt.h>			// include watchdog timer support


// From AVRLIB by Pascal Stang 
// ------------------------------------------------------------------------------

// A2D clock prescaler select
//		*selects how much the CPU clock frequency is divided
//		to create the A2D clock frequency
//		*lower division ratios make conversion go faster
//		*higher division ratios make conversions more accurate
#define ADC_PRESCALE_DIV2		0x00	///< 0x01,0x00 -> CPU clk/2
#define ADC_PRESCALE_DIV4		0x02	///< 0x02 -> CPU clk/4
#define ADC_PRESCALE_DIV8		0x03	///< 0x03 -> CPU clk/8
#define ADC_PRESCALE_DIV16		0x04	///< 0x04 -> CPU clk/16
#define ADC_PRESCALE_DIV32		0x05	///< 0x05 -> CPU clk/32
#define ADC_PRESCALE_DIV64		0x06	///< 0x06 -> CPU clk/64
#define ADC_PRESCALE_DIV128		0x07	///< 0x07 -> CPU clk/128
// default value
#define ADC_PRESCALE			ADC_PRESCALE_DIV64
// do not change the mask value
#define ADC_PRESCALE_MASK		0x07


// bit mask for A2D channel multiplexer
#define ADC_MUX_MASK			0x1F

#define AD_SMOOTHING			6	// smoothing level of ad samples (0 -  15)

// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>				// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>		// include interrupt support
#include <avr/wdt.h>			// include watchdog timer support
#include "atm88lib.h"

// ==============================================================================
// Global variables
// ------------------------------------------------------------------------------

// Arrays of keep track of sampled sensors and what data has already been sent via MIDI

static unsigned int		ad_values[5];			// sampled analog input values
static unsigned char 	ad_idx;										// sensor currently being sampled

static unsigned char target_value, actual_value;


typedef enum {
	idle = 0,
	attack = 1,
	decay = 2,
	sustain = 3,
	release = 4
} phase_t;

static phase_t phase = idle;


void statusLedToggle(void)	{PORTB ^= 1 << 1;}

// ------------------------------------------------------------------------------
// - ADC Utilities
// ------------------------------------------------------------------------------

int adConversionComplete (void) {
	return (!(ADCSRA & (1 << ADSC)));
}

 int adRead10bit (void) {
 	return (ADCL | ADCH << 8);
 }
 
 int adRead8bit (void) {
 	return adRead10bit() >> 2;
 }
 
 void adSetChannel (unsigned char mux) {
 	ADMUX = (ADMUX & ~ADC_MUX_MASK) | (mux & ADC_MUX_MASK);		// set channel
 }
 
 void adStartConversion (void) {
 			ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
			ADCSRA |= (1 << ADSC);			// start conversion
}

void adInit(void){
	// --------------------- Init AD Converter

	ADCSRA |= (1 << ADEN);				// enable ADC (turn on ADC power)
	ADCSRA &= ~(1 << ADATE);			// default to single sample convert mode
										// Set ADC-Prescaler (-> precision vs. speed)

	ADCSRA = ((ADCSRA & ~ADC_PRESCALE_MASK) | ADC_PRESCALE_DIV64); // Set ADC Reference Voltage to AVCC
	ADMUX |= (1 << REFS0);
	ADMUX &= ~(1 << REFS1);
	
	ADCSRA &= ~(1 << ADLAR);				// set to right-adjusted result//	sbi(ADCSRA, ADIE);				// enable ADC interrupts
	ADCSRA &= ~(1 << ADIE);				// disable ADC interrupts
	adStartConversion();
}


// ------------------------------------------------------------------------------
// - Check ADC and update ad_values
// ------------------------------------------------------------------------------

void checkAnalogPorts (void) {

	if ( adConversionComplete() ) {									// see if last AD-Conversion is complete
			
		unsigned int temp = adRead10bit();							// read ADC (10 bits);		
		ad_values[ad_idx] = (ad_values[ad_idx] * AD_SMOOTHING + temp) / (AD_SMOOTHING + 1); // basic low pass filter
		
		ad_idx = (ad_idx + 1) % 5;				// advance multiplexer index up to maximum channels
		adSetChannel(ad_idx);										// set mutliplexer channel
		adStartConversion();										// start a new AD conversion for next channel
	}
}

// ------------------------------------------------------------------------------
// - Trigger Interrupt
// ------------------------------------------------------------------------------

ISR(INT1_vect) {
	

	phase = attack;
	
	OCR1A = ad_values[0];						// set timer 1 overflow to pot value
	target_value = 255;							// we'll have to climb to full swing
	actual_value = 0;				

	OCR2A = 0;
	StartPWM2(PRESC1, PWMA_SET, PWMB_NONE); 	// start PWM


//	TCCR1B |= (1 << CS10); 						// start timer 1 , no prescaler
	TCCR1B |= (1 << CS10) | (1 << CS10); 						// start timer 1 , 64 prescaler
}	


// ------------------------------------------------------------------------------
// - Timer 1 overflow interrupt
// ------------------------------------------------------------------------------

ISR(TIMER1_COMPA_vect) {


	if (actual_value < target_value) {
		actual_value++;
	} else if (actual_value > target_value) {
		actual_value--;
	}
	
	
	if (actual_value == target_value) {		// end of current phase
	
		statusLedToggle();
		switch(phase) {
			
			case attack:


				phase = decay;
				target_value = (unsigned char)(ad_values[2] >> 2);	// S height is defined by third pot
				OCR1A = ad_values[1];							// decay time is set by second pot 

				break;
				
			case decay:

				phase = sustain;
				OCR1A = ad_values[4];							// sustain time is set by fourth pot 
				actual_value = 0;
				target_value = 255;
				
				break;
				
			case sustain:
						//statusLedToggle();
				phase = release;
				OCR1A = ad_values[5];							// release time is set by fifth pot
				actual_value = (unsigned char)(ad_values[2] >> 2);
				target_value = 0;
				break;
			
			case release:
				statusLedToggle();
				phase = idle;
				TCCR1B &= 0xF8; 			// stop timer 1
				break;
				
			default:
				break;


		}
		
	}
	
	if (phase == sustain) {
		OCR2A = (unsigned char)(ad_values[2] >> 2);
	} else {
		OCR2A = actual_value;					// set PWM frequency
	} 
}





// ##############################################################################
// MAIN
// ------------------------------------------------------------------------------

int main(void) {
	
	// PORTC: AD Converter
	DDRC 	= 0x00;		// set all pins to input
	PORTC 	= 0x00;		// make sure pull-up resistors are turned off
	adInit();			// init AD converter (see midi_gnusb.c)

	DDRB |= (1 << 3);
	DDRB |= (1 << 1); // test led
	

	// initialise 16bit timer
	TCCR1B = (1 << WGM12); //	CTC mode
	TIMSK1 = (1 << OCIE1A); // 	enable interrupt


	// enable external interrupt on INT1
	EICRA = (1 << ISC11) | (1 << ISC10);	// rising edge
	EIMSK = (1 << INT1); 					// enable interrupt
	
	
	OCR2A = 0;
	
	
	wdt_enable(WDTO_1S);	// enable watchdog timer
	sei();					// enable interrupts
	
	while(1) {
		wdt_reset();
		checkAnalogPorts();

	}
		
}