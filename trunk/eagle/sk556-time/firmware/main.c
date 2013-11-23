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
volatile uint8_t	bpm;
volatile uint8_t	beats_per_bar;
volatile uint8_t	beat_count;

volatile uint8_t	did_tick;
volatile uint16_t 	beat_time;
volatile uint16_t 	wait_until_next_beat;
volatile uint16_t 	wait_until_next_bar;
volatile uint16_t 	wait_until_free_running;
volatile uint8_t	beat_pulse;
volatile uint8_t	bar_pulse;

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

void ad_set_channel(uint8_t chan) {
	ADMUX 	= (1 << REFS1) | (chan & 0x03); 			// Internal 1.1V Voltage Reference.
														// Cannot use external reference (must be min 2 Volts)
}

uint16_t ad_Read10bit (void) {
 	return (ADCL | ADCH << 8);
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
	ADCSRA 	= (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1); 		// enable adc, prescaler 64
	ad_set_channel(7);
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

	if (mode == 0) {
		unsigned char i;
		
		bpm = 60000 / beat_time;
		for (i = 0; i < 3; i++) {
			display_buf[i] = numTo7Seg(getDigit(i,bpm));
		}
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
		wait_until_next_beat = 0;
		wait_until_free_running = 2000;					// stay in tapping mode
}
void debounce_switches(){
	if (ticks % 4 > 0) return; // continue below ca all 4 ms
		
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
	
	if (encoder_state == last_encoder_state) return;
	
	
	if (~Debounced_State & 0x1c) {	// any button pressed
		n = 10;
	} else {
		n = 1;
	}
	
     if (encoder_state & 1) {
         if (~last_encoder_state & 1) {
             if (encoder_state & 2) beat_time -= n;
             else beat_time +=n;
         } 
     }

	if (beat_time < 240)	beat_time = 240;
	if (beat_time > 1500) 	beat_time = 1500;

    last_encoder_state = encoder_state;
    update_display_buffer();
}





void check_buttons() {
	unsigned char m = ~(Debounced_State >> 2) & 0x1F;
	if (m == last_buttons) return;
	
	last_buttons = m;
	if (m == 0) return;
	
	if (m & (1 << 4)) {
		if (wait_until_free_running) {
		
			tap_time = ticks - tap_start_time;
			tap_count++;
			
			beat_time = tap_time / tap_count;
			update_display_buffer();

		} else {
			tap_start_time = ticks;
			tap_count = 0;
			beat_count = beats_per_bar;  								// force beat pulse output
		}
		set_beat_here();
	}
}

// ------------------------------------------------------------------------------
// Audio input

void check_ad(void) {
	static uint32_t ad_samplecount;
	static uint32_t ad_mean;
	static uint16_t ad_peak;
	static uint32_t ad_last_peak_time;
		
	if ((ADCSRA & (1 << ADSC))) return; // not finished with last conversion
		
	uint16_t temp;
	temp = ad_Read10bit();
	ad_start_conversion();

	if (temp < 511 ) return; // disregard negative side of audio


	temp -= 511;
	if (ad_samplecount >= 0x1FFFDFF) ad_samplecount = 0xFF; 	// leave room in 32 bit calculation
																/* idea: ad_samplecount * ad_mean + temp below should not roll around 32 bit value
																	ad_mean is probably not bigger than 128 (should tend to be 0), temp could be 511, so 0xFFFFFFFF / 128 - 512 
																	i dont set it to 0 so we keep a small sample pool for running mean */ 
	ad_mean = ad_samplecount * ad_mean;
	ad_mean += temp;
	ad_samplecount++;
	ad_mean /= ad_samplecount;
		
	
	if (temp > (3 * ad_mean)) {
		ad_peak = (15 * ad_peak + temp ) / 16;		// a bit of lowpass filtering..
		if (ad_peak > (10 * ad_mean)) {
		
			//seems like a peak. constrain beats to max 255 bpm 
			if ((ticks - ad_last_peak_time) > 240) {
				set_beat_here();

				beat_time = ticks - ad_last_peak_time;
				if (beat_time > 1500) beat_time = 1500; // minimum 40 bpm				
				ad_last_peak_time = ticks;
				
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
	beat_time = 500;			// 120 bpm
	beats_per_bar = 4;

	mode = 0;
	update_display_buffer();
	
	PORTB |= (1 << 1);

	while(1) {
		wdt_reset();

		debounce_switches();
		check_buttons();
		check_rotary();
		
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
					ramp_start = ticks;
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
			
		}
		
		ramp_pos = (ticks - ramp_start) * 0xFF;
		ramp_pos = ramp_pos / ramp_length;
//		OCR1A = (uint16_t)ramp_pos;
		OCR1AL = (uint8_t) 255 - ramp_pos;

	}
	return 0;
}	