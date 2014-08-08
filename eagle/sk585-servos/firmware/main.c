//---------------------------------------------------------------------------------------------
//	SK585 - CV to Servo module										ATMEGA88
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	• 2013 Michael Egger, Licensed under GNU GPLv3
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
uint16_t			y_in_raw[3];
uint8_t				y_in[3];
uint8_t				ad_idx;

uint8_t 			table [3][256];	
uint16_t			time_points[4];
uint8_t 			pulse_idx;


volatile uint8_t 	is_dubbing;

volatile uint8_t	x_in;

uint8_t did_tick;


#define led_toggle()	PORTB ^= (1 << 7)
#define led_on()		PORTB |= (1 << 7)
#define led_off()		PORTB &= ~(1 << 7)


#define PULSE_MIN 	 500			// .75 ms
#define PULSE_MAX 	2500			//	2.25 ms

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

long map(long x, long in_min, long in_max, long out_min, long out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

// ------------------------------------------------------------------------------
// Check Analog Inputs

void check_ad(void){
		if ((ADCSRA & (1 << ADSC))) return; // not finished with last conversion
		
		uint16_t temp;
		temp = ad_Read10bit();
		
		if ( ad_idx < 3) {
			y_in_raw[ad_idx] = (7 * y_in_raw[ad_idx] + temp) / 8;
			y_in[ad_idx] = to_scale(y_in_raw[ad_idx]);
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


	time_points[3] = 19999;

	// setup Ports
	// PWM output on pb1, pb2, pb3
	
	DDRB = 	(1 << 1) | (1 << 2) | (1 << 3) ;	// output for PWM
	
	DDRD |= (1 << 3);
	PORTD = (1 << 7) | (1 << 6) | (1 << 5);
	

	// timer 0	-> ticking clock
	last_ticks = 0;
	ticks 	= 0;
	TCCR0A 	= (1 << WGM01);								// CTC
	TCCR0B 	= (0 << CS02) | (1 << CS01) | (1 << CS00);	// 64 prescaler @ 8Mhz -> 125'000 Hz
	TIMSK0 	= (1 << OCIE0A);								// enable interrupt
	OCR0A	= 124;											// 1000 Hz -> Milliseconds
	sei();
	
	
	// setup timer 1
   //Configure TIMER1
	TCCR1A = 0;		
	TCCR1B = (1<<CS11) ; 		//Normal Mode , PRESCALER=8

	   
	TIMSK1 = (1 << OCIE1A) ;						// enable output compare interrupt
	


	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64

	ad_idx = 0;
	ad_set_channel(ad_idx);
	ad_start_conversion();

	wdt_enable(WDTO_30MS);			// enable watchdog timer
}



void calc_time_points(void) {	
	time_points[0] = map(y_in[0],0,255,PULSE_MIN,PULSE_MAX);
	time_points[1] = time_points[0] + map(y_in[1],0,255,PULSE_MIN,PULSE_MAX);
	time_points[2] = time_points[1] + map(y_in[2],0,255,PULSE_MIN,PULSE_MAX);
}


ISR (TIMER1_COMPA_vect) {
	
	sei();
	
	if (TCNT1 >= 19999) { 							// end of 20ms period
		calc_time_points();							// recalculate all three pwm
		
		PORTD &= ~(1 << 2);						 	// start over	
		TCNT1 = 0;
		pulse_idx = 0;
		PORTB = 1 << 1;
		OCR1A = time_points[0];

		return;
	}
	
	pulse_idx++;
	OCR1A = time_points[pulse_idx];
	if (pulse_idx < 3) {
		PORTB = 1 << (pulse_idx + 1);
	} else {
		PORTB = 0;
	}
	
	cli();
}



// ==============================================================================
// includes
// ------------------------------------------------------------------------------

int main (void) {

	init();
	calc_time_points();
	OCR1A = time_points[0];

	uint8_t			old_x;
	uint8_t			i;
	uint32_t		lastMillis;
	
	PORTB = (1 << 2);
	
	reference = 930; 	// voltage reference is 1.1V - cv-max is 1V		

	while(1) {
		wdt_reset();
		
		check_ad();	
		
		if ((millis() - lastMillis) > 100 ) { 	
			
			/*i++;
			y_in[2] = to_scale(i*4);
			lastMillis = millis();*/
		}
		

	}
	return 0;
}	