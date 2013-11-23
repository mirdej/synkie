//---------------------------------------------------------------------------------------------
//	SK556	Time										ATMEGA88
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
volatile uint32_t	ticks;
uint16_t			display_value;
uint8_t				beats_per_bar;
uint8_t				beat_count;
uint8_t 			allow_audio;

volatile uint8_t	did_tick;
uint16_t 			beat_time;
uint16_t			beat_time_minimum;
uint16_t			beat_time_maximum;
uint16_t		 	wait_until_next_beat;
uint16_t 			wait_until_next_bar;
uint16_t 			wait_until_free_running;
uint8_t				beat_pulse;
uint8_t				bar_pulse;

#define 			PULSE_LENGTH 100

volatile uint8_t	tap_count;
volatile uint16_t 	tap_start_time;
volatile uint16_t 	tap_time;

volatile uint32_t	ramp_start;
volatile uint32_t	ramp_length;

unsigned char 	mode, last_buttons;
unsigned char 	display_buf[3];


#define 		DEBOUNCE_MAX_CHECKS 10
unsigned char Debounced_State;
unsigned char Debounce_State[DEBOUNCE_MAX_CHECKS];
unsigned char Debounce_Index;
unsigned char last_encoder_state;

#define DISP_PORTB_MASK 0x3F
#define DISP_PORTD_MASK 0x80
// Set Display Brightness 0-100
#define DISPLAY_BRIGHTNESS	85	
volatile uint16_t display_last_ticks;
volatile uint8_t display_idx;


#define led_toggle()	PORTD ^= (1 << 2)

// ==============================================================================
// Functions
// ------------------------------------------------------------------------------

void ad_start_conversion(void) {
 		ADCSRA |= (1 << ADIF);			// clear hardware "conversion complete" flag 
		ADCSRA |= (1 << ADSC);			// start conversion
}

uint16_t ad_Read10bit (void) {
 	return (ADCL | ADCH << 8);
 }


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
// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	/* setup Ports
	PORTB
		7/6	Cathodes 1/2
		5 	SCK / TAP Tempo Btn
		4 	MISO / BEAT OUT
		3	MOSI / BAR OUT
		2 	SYNC IN 
		1 	RAMP OUT
		0 	LED
		
	PORTC
		5	Lock Btn
		4	Left Btn
		3	Middle
		2	Right Btn
		0/1	Rotary
		
	PORTD 
		7 		Cathode 3
		0-6		Anodes
	*/
			
	DDRB = 	(1 << 7) | (1 << 6) | (1 << 4) | (1 << 3) | (1 << 1) | (1 << 0);;
	PORTB = (1 << 5);
	
	DDRC = 0;
	PORTC = 0x3f;
	
	DDRD = 0xff;

	// timer 0	-> millisecond clock
	ticks 	= 0;
	TCCR0A 	= (1 << WGM01);									// CTC
	TCCR0B 	= (0 << CS02) | (1 << CS01) | (1 << CS00);		// 64 prescaler @ 8Mhz -> 125'000 Hz
	TIMSK0 	= (1 << OCIE0A);								// enable interrupt
	OCR0A	= 124;											// 1000 Hz -> Milliseconds

	// timer 1 -> 16bit pwm
/*	TCCR1A	= (1 << COM1A1);
	TCCR1B = (1 << CS10);
*/
	TCCR1A = (1 << COM1A1)  | (1 << WGM10);			// fast pwm 8bit, clear OC1A on compare match
	TCCR1B = (1 << CS10) 	| (1 << WGM12);			// start timer no prescaler -> 8Mhz / 256 -> 32 khz PWM

	// setup analog converter. 
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2); 		// enable adc, prescaler 16
	ADMUX 	= 0x07;
	ad_start_conversion();

	wdt_enable(WDTO_30MS);			// enable watchdog timer
	sei();
}


unsigned char getDigit(unsigned char d, unsigned int n) {
    if (d == 0) return n % 10;
    n = n / 10;
    if (d == 1) return n % 10;
    n = n / 10;
    return n % 10;
}
unsigned char numTo7Seg (unsigned char n) {
	switch (n) {
		  // connectoions are  gcedfab
			 case 0: return 0b0111111; break;
			 case 1: return 0b0100001; break;
			 case 2: return 0b1011011; break;
			 case 3: return 0b1101011; break;
			 case 4: return 0b1100101; break;
			 case 5: return 0b1101110; break;
			 case 6: return 0b1111110; break;
			 case 7: return 0b0100011; break;
			 case 8: return 0b1111111; break;
			 case 9: return 0b1101111; break;
			 default: break;
		   }
		return 0;
}
void update_display_buffer(void) {
	
	unsigned char i;

	switch (mode){
		
		case 0:	
			display_value = 60000 / beat_time;
			break;
		case 1: 
			display_value = beat_time;
			break;
		case 2:
			display_value = beat_count;
			break;		
		default:
			display_value = 0;
	}
		
	for (i = 0; i < 3; i++) {
			display_buf[i] = numTo7Seg(getDigit(i,display_value));
	}
	
}

uint16_t bpm_to_ms (uint8_t b) {
	// bpm min/max	:	40 / 250
	// ms 			: 1500 / 240
	// -> frames	:   60 / 9.6
	
	uint16_t temp = 60000;
	return temp / b;
}

void set_beat_here(void) {

		wait_until_free_running = 2000;					// stay in tapping mode

		// check if we're not just behind a beat
		if (beat_time - wait_until_next_beat < 10) return;
		wait_until_next_beat = 0;
}

void debounce_switches(){
	uint32_t m = millis();
	if (m % 4 > 0) return; // continue below ca all 4 ms
		
    unsigned char i,j;
    Debounce_State[Debounce_Index] =	(PINC & 0x3F) | ((PINB & 0x20) << 1);
    ++Debounce_Index;
    j=0xff;
    for(i=0; i<DEBOUNCE_MAX_CHECKS;i++)	j=j & Debounce_State[i];
    Debounced_State = j;
    if (Debounce_Index>=DEBOUNCE_MAX_CHECKS) Debounce_Index=0;
}

void refresh_display(void){

	display_idx++;
	display_idx %= 103-DISPLAY_BRIGHTNESS;
	
	PORTB &= DISP_PORTB_MASK; 
	PORTD = display_buf[display_idx] & 0x7F;
	
	
	switch (display_idx) {
		case 0: 		PORTD |= (1 << 7); 	break;
		case 1: 		PORTB |= (1 << 7);  break;
		case 2: 		PORTB |= (1 << 6);  break;
		default: break;
	}
}

void check_rotary(void) {

	unsigned char n;
	unsigned char encoder_state = Debounced_State & 0x03;
	uint16_t bpm;
	static uint8_t isinitialized;
	
	if (!isinitialized) {last_encoder_state = encoder_state; isinitialized = 1; return;}

	if (encoder_state == last_encoder_state) return;
	
	
	if (~Debounced_State & 0x1c) {	// any button pressed
		n = 10;
	} else {
		n = 1;
	}
	
	if ( mode == 0) bpm = 60000 / beat_time;
	
     if (encoder_state & 1) {
         if (~last_encoder_state & 1) {
             if (encoder_state & 2) {
             	if (mode == 1) beat_time -= n;
             	else if ( mode == 0) bpm++;
             } else {
             	if (mode == 1) beat_time +=n;
             	else if ( mode == 0) bpm--;
             }
         } 
     }

	if ( mode == 0) beat_time = 60000 / bpm;

	if (beat_time < beat_time_minimum)	beat_time = beat_time_minimum;
	if (beat_time > beat_time_maximum) 	beat_time = beat_time_maximum;

    last_encoder_state = encoder_state;
    update_display_buffer();
}





void check_buttons() {
	static uint8_t isinitialized;
	unsigned char m = ~(Debounced_State >> 2) & 0x1F;
	if (m == last_buttons) return;
	
	last_buttons = m;
	if (!isinitialized) {isinitialized = 1; return;}
	
	if (m == 0) return;
	
	if (m & (1 << 4)) {
		if (wait_until_free_running) {
		
			tap_time = millis() - tap_start_time;
			tap_count++;
			
			beat_time = tap_time / tap_count;
			update_display_buffer();

		} else {
			tap_start_time = millis();
			tap_count = 0;
			beat_count = beats_per_bar;  								// force beat pulse output
		}
		set_beat_here();
	}
	
	if (m & (1 << 3)) {
		if (wait_until_free_running) {
			wait_until_free_running = 0;
			allow_audio = 0;
		} else {
			allow_audio = 1;
			wait_until_free_running = 2000;
		}
	}
	
	if (m & (1 << 0)) {
		mode++;
		mode %= 2;
	}
	if (m & (1 << 2)) {
		if (mode  < 2) mode = 2;
		else mode = 0;
	}

}


uint16_t lopass(uint16_t new, uint16_t old, uint16_t factor) {
	uint32_t temp;
	
	temp = (factor - 1) * old + new;
	temp = temp / factor;
	return (uint16_t)temp;
} 
// ------------------------------------------------------------------------------
// Audio input

void check_ad(void) {

	static uint16_t ad_mean;
	static uint16_t ad_peak;
	static uint32_t ad_last_peak_time;
		
	if ((ADCSRA & (1 << ADSC))) return; // not finished with last conversion


	uint16_t temp;
	temp = ad_Read10bit();
	ad_start_conversion();
	
	ad_mean = lopass(temp,ad_mean,1000);		
	
	if (!allow_audio) return;
		
	if (temp > (2 * (ad_mean + 2))) {
		
		//seems like a peak. constrain beats to max 255 bpm 
		if ((millis() - ad_last_peak_time) > beat_time_minimum) {

			ad_peak = lopass(temp,ad_peak,5);
			if (ad_peak > (10 * (ad_mean+1))) {
		
				set_beat_here();

				beat_time = millis() - ad_last_peak_time;
				if (beat_time > beat_time_maximum) beat_time = beat_time_maximum; // minimum 40 bpm				
				ad_last_peak_time = millis();
				ad_peak = 0;				

				update_display_buffer();
			}
		}
		
	}
		
}



// ------------------------------------------------------------------------------
// Count Milliseconds

ISR(TIMER0_COMPA_vect)
{
	ticks++;
	did_tick = 1;
	refresh_display();
}


// ==============================================================================
// main
// ------------------------------------------------------------------------------

int main (void) {

	uint32_t	ramp_pos;
	
	init();
	beat_time = 499;			// 120 bpm
	beats_per_bar = 4;

	mode = 0;
	update_display_buffer();
	
	//PORTB |= (1 << 1);
	
	beat_time_minimum = 240;
	beat_time_maximum = 1500;
	allow_audio = 1;

	while(1) {
		wdt_reset();

		debounce_switches();
		check_buttons();
		check_rotary();
		check_ad();
		
		if (did_tick) {			// happens every millisecond
			did_tick = 0;
			
			if (beat_pulse) {
				beat_pulse--;
				PORTB |= (1 << 4);		
			} else {	
				PORTB &= ~(1 << 4);		
			}
			
			if (wait_until_next_beat) {
				wait_until_next_beat--;
			} else {
				beat_count++;
				if (beat_count >= beats_per_bar) {
					beat_count = 0;
					bar_pulse = PULSE_LENGTH;
					ramp_start = millis();
					ramp_length = beats_per_bar * beat_time;
				}
				
				PORTB |= (1 << 4);		
				beat_pulse = PULSE_LENGTH;	
				wait_until_next_beat = beat_time - 1;
			}

			if (bar_pulse) {
				bar_pulse--;
				PORTB |= (1 << 3);		
			} else {	
				PORTB &= ~(1 << 3);		
			}

			if (wait_until_free_running) {
				PORTB |= (1 << 0);		
				wait_until_free_running--;
			} else {
				PORTB &= ~(1 << 0);	
			}
			
			update_display_buffer();
		
		  ramp_pos = (millis() - ramp_start) * 0xFF;
		  ramp_pos = ramp_pos / ramp_length;
		  OCR1AL = (uint8_t) 255 - ramp_pos;

		}

	}
	return 0;
}	