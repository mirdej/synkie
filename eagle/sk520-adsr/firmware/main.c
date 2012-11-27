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

// ==============================================================================
// Global variables
// ------------------------------------------------------------------------------

// Arrays of keep track of sampled sensors and what data has already been sent via MIDI

static unsigned int		ad_values[5];			// sampled analog input values
static unsigned char 	ad_idx;										// sensor currently being sampled

static uint8_t value = 0;
static int error = 0;
static int dvalue = 0;
static int dtime = 0;
static int step = 0;

static void start_ramp(uint8_t end, uint16_t time) {
	uint8_t start = OCR2A;
	if(end > start) {
		dvalue = end - start;
		step = 1;
	}
	else {
		dvalue = start - end;
		step = -1;
	}
	dtime = time*4;
	value = start;
	error = dtime / 2;
}

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
	PORTB |= 1<<1;
	
	uint16_t dt = ad_values[0];	// set timer 1 overflow to pot value
	if (dt < 1) dt = 1;
	TCCR1B |= (1 << CS12) | (1 << CS10);	// clk / 1024
	start_ramp(255, dt);
	OCR1A = dt;
}	


// ------------------------------------------------------------------------------
// - Timer 1 overflow interrupt
// ------------------------------------------------------------------------------

ISR(TIMER1_COMPA_vect) {
	uint16_t dt;
	switch(phase) {
		
		case attack:
			phase = decay;
			dt = ad_values[1];
			if (dt < 1) dt = 1;
			OCR1A = dt;
			start_ramp(ad_values[2] >> 2, dt);
			break;
			
		case decay:
			phase = sustain;
			OCR1A = ad_values[3];	// sustain time is set by fourth pot 
			step = 0;
			break;
			
		case sustain:
			phase = release;
			dt = ad_values[4];
			if (dt < 1) dt = 1;
			OCR1A = dt;
			start_ramp(0, dt);
			break;
		
		case release:
			phase = idle;
			step = 0;
			OCR2A = 0;
			TCCR1B &= ~0x7;	// stop timer 1
			PORTB &= ~1<<1;
			break;
			
		default:
			break;
	}
}


ISR(TIMER2_OVF_vect) {
	if (step != 0) {
		error -= dvalue;
		while (error < 0) {
			if (step > 0) {
				if (value < 255 - step)
					value += step;
				else
					value = 255;
			}
			else {
				if (value > -step)
					value += step;
				else
					value = 0;
			}
			error += dtime;
		}
		OCR2A = value;
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
	TCCR1B = (1 << WGM12); //	CTC mode, clk stopped
	TIMSK1 = (1 << OCIE1A); // 	enable output Timer 1 output compare A interrupt


	// enable external interrupt on INT1
	EICRA = (1 << ISC11) | (1 << ISC10);	// rising edge
	EIMSK = (1 << INT1); 					// enable interrupt
	
	
	// set up PWM on timer 2
	TCCR2A = 0x83; 	// Fast PWM, non-inverting
	TCCR2B = 0x01;	// clk / 1
	OCR2A = 0;
	TIMSK2 |= (1 << TOIE2);
	
	
	wdt_enable(WDTO_1S);	// enable watchdog timer
	sei();					// enable interrupts
	
	while(1) {
		wdt_reset();
		checkAnalogPorts();
	}
		
}
