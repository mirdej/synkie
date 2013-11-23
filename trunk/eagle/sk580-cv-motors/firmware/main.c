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
uint16_t reference;
uint8_t	y_in;
uint8_t	ad_idx;

uint8_t 			table [250];	// 250 samples @ 50Hz -> 10 seconds

volatile uint8_t 	is_recording;
volatile uint8_t 	is_dubbing;
volatile uint8_t 	was_recording;
volatile uint8_t	framecount;
volatile uint8_t	endcount;

uint8_t did_tick;

uint16_t			has_sync;
volatile uint32_t	last_beat_time;
volatile uint8_t 	beat_interrupt_flag;

#define led_toggle()	PORTB ^= (1 << 7)
#define led_on()		PORTB |= (1 << 7)
#define led_off()		PORTB &= ~(1 << 7)

// ==============================================================================
// Functions
// ------------------------------------------------------------------------------

uint32_t millis()
{
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

void capture (void){
	if (! has_sync) {
		is_recording 	= ~PIND & (1 << 0);
		is_dubbing 		= ~PIND & (1 << 7);
	}
	
	if (is_recording != was_recording) {
	
		if (was_recording) { 
			endcount = framecount + 1;
		} else {
			endcount = 251;
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

void pwm1_on(void) {
	// setup timer 1 PWM on OC1A (pin pb1)
	TCCR1A = (1 << COM1A1)  | (1 << WGM10);			// fast pwm 8bit, clear OC1A on compare match
	TCCR1B = (1 << CS10) 	| (1 << WGM12);			// start timer no prescaler -> 8Mhz / 256 -> 32 khz PWM
}


void pwm1_off(void) {
	TCCR1A = 0;
	TCCR1B = 0;
}



// ------------------------------------------------------------------------------
// Count Milliseconds

ISR(TIMER0_COMPA_vect)
{
	ticks++;
	did_tick = 1;
	if (ticks % 50) return;
	else capture();
}

// ------------------------------------------------------------------------------
// Beat input

ISR (INT0_vect) {
	last_beat_time	= millis();
	beat_interrupt_flag = 1;
	has_sync = 2000;
	led_toggle();
	is_recording 	= ~PIND & (1 << 0);
	is_dubbing 		= ~PIND & (1 << 7);
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

	// INT0 is sync input
	EICRA = (1 << ISC01) | (1 << ISC00);	// rising edge
	EIMSK = (1 << INT0);					// enable interrupt
	
	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64

	ad_idx = 2;
	ad_set_channel(ad_idx);
	ad_start_conversion();

	wdt_enable(WDTO_30MS);			// enable watchdog timer
}



// ==============================================================================
// includes
// ------------------------------------------------------------------------------

int main (void) {

	init();
				
	uint8_t		 	y_out;
	uint16_t		frameout;
	
	reference = 930; 	// voltage reference is 1.1V - cv-max is 1V
	pwm1_on();
		

	while(1) {
		wdt_reset();
		
		check_ad();	
		
/*	if (millis()-last_ticks >= 1000) {
		led_toggle();
		last_ticks = millis();
	}*/
		if (did_tick) {								// happens every 1 millisecond
			if (has_sync) 	has_sync--;
			else 			led_off();
			did_tick = 0;
		}
		
		if (frameout != framecount) {
			cli();
			frameout = framecount;
			if (is_recording | is_dubbing) { 
				table[framecount] = y_in;
			}
			y_out = table[framecount];
			sei();
			
			if (y_out == 0) {
				pwm1_off();
				PORTB &= ~(1 << 1);			// turn off pin
			} else if (y_out == 255) {
				pwm1_off();
				PORTB |= (1 << 1);			// turn on pin
			} else {
				OCR1AL = y_out;
				pwm1_on();
			}
		}

	}
	return 0;
}	