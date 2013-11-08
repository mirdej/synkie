//---------------------------------------------------------------------------------------------
//	VIDEO DELAY - Delay Time Controller
//
// Part of the Synkie Project: www.synkie.net
//
// © 2013 Michael Egger, Licensed under GNU GPLv3
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

#define state_init 254
#define state_undef 255
#define	state_change_mode 4

#define DISP_PORTB_MASK 0x3F
#define DISP_PORTD_MASK 0x80
#define DISPLAY_REFRESH	10
// Set Display Brightness 0-100
#define DISPLAY_BRIGHTNESS	85	

#define SAMPLE_FREQUENCY	9615384.61538462			//samples per second

#define VERSION_1 0
#define VERSION_2 1

#define DDR_SPI DDRB
#define DD_MOSI 3
#define DD_SCK 5
#define DD_SS  2

volatile unsigned long ticks;
volatile unsigned long last_ticks_seconds;

volatile unsigned long 		display_last_ticks;
unsigned char 				display_idx;

signed int		values[3];
signed int 		values_max[3];
unsigned char 	mode, next_mode, last_buttons;
unsigned char 	display_buf[3];

unsigned char idx;

unsigned long delay_time;

unsigned char spi_idx;


#define DEBOUNCE_MAX_CHECKS 10
unsigned char Debounced_State;
unsigned char Debounce_State[DEBOUNCE_MAX_CHECKS];
unsigned char Debounce_Index;
unsigned char last_encoder_state;
unsigned char write_enable;

void recalculate_delay(void) {
	double temp;
	
	temp = (double)values[0] * 384610.6; //(SAMPLE_FREQUENCY / 25.);
	temp += (double)values[1] * 615.361; //(SAMPLE_FREQUENCY / 1000000. * 64.);
	temp += (double)values[2];
	
	if (temp>5) temp -= 5;
	
	delay_time = (long)temp;
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

cli();

	if (mode < 3) {
		unsigned char i;
		
		for (i = 0; i < 3; i++) {
			display_buf[i] = numTo7Seg(getDigit(i,values[mode]));
		}
		
	} else {
	
	
	  switch (mode) {
	
		  case state_undef:
			  display_buf[0] = 0b1000000;
			  display_buf[1] = 0b1000000;
			  display_buf[2] = 0b1000000;
			  break;
							
		  case state_init:
			  display_buf[0] = 0b0000000;
			  display_buf[1] = numTo7Seg(VERSION_1);
			  display_buf[2] = numTo7Seg(VERSION_2);
			  break;
			  
		case state_change_mode:
				display_buf[0] = 0b0000000;
			  	display_buf[2] = 0b0000000;
			  	switch (next_mode) {
			  			  // connectoions are  gcedfab

			  		case 0: 			  	display_buf[1] = 0b1010110; break;
			  		case 1: 			  	display_buf[1] = 0b0011100; break;
			  		case 2: 			  	display_buf[1] = 0b1110101; break;
				    default: 			  	display_buf[1] = 0b0000000;
				} 
				break;


		 default:
			  display_buf[0] = 0b0000000;
			  display_buf[1] = 0b1000000;
			  display_buf[2] = 0b0000000;
			  break;
	  
	  }
	}
	sei();
}
void debounce_switches(){
	if (ticks % 4 > 0) return; // ca all 4 ms
		
    unsigned char i,j;
    Debounce_State[Debounce_Index] =	PINC & 0x3F;
    ++Debounce_Index;
    j=0xff;
    for(i=0; i<DEBOUNCE_MAX_CHECKS;i++)	j=j & Debounce_State[i];
    Debounced_State = j;
    if (Debounce_Index>=DEBOUNCE_MAX_CHECKS) Debounce_Index=0;
}
void refresh_display(void){
	if (ticks - display_last_ticks < DISPLAY_REFRESH) return;
	display_last_ticks = ticks;
	
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
	if (mode > state_change_mode) return;
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
             if (encoder_state & 2) values[mode] += n;
             else values[mode] -=n;
         } 
     }

	if (values[mode] < 0) 					values[mode] += values_max[mode] + 1;
	if (values[mode] > values_max[mode]) 	values[mode] -= values_max[mode] + 1;
	

    last_encoder_state = encoder_state;
    update_display_buffer();
    recalculate_delay();

	spi_idx = 3;
}

void check_buttons() {
	unsigned char m = ~(Debounced_State >> 2) & 0x0F;
	if (m == last_buttons) return;
	
	last_buttons = m;
	if (m == 0) return;

	mode = state_change_mode;
	last_ticks_seconds = ticks;

	switch (m) {
		case 8: 
			mode 				= next_mode;
			if (write_enable == 0) { write_enable = 0x03; }
			else {write_enable = 0x00;}
			break;				
		case 4: next_mode = 0; break;	// frames
		case 2: next_mode = 1; break;
		case 1: next_mode = 2; break;
		default: next_mode = 255;
	}
	
	update_display_buffer();
	
	PORTB = (PORTB & ~0x03) | write_enable;
}

void check_spi(void) {
	unsigned char temp;
	if (spi_idx == 0) {
		PORTB |= (1 << DD_SS);		// deselect slave
		return;
	}
	
/*	if (spi_idx < 3 ) {
		if (SPSR & (1<<SPIF)) return;	// still sending data
	}
*/	
	PORTB &= ~(1 << DD_SS);			// select slave

	spi_idx--;
	temp = (unsigned char)((delay_time >> (spi_idx * 8)) & 0xFF);
	SPDR = temp;
	while(!(SPSR & (1<<SPIF))){}
}


ISR(SIG_OUTPUT_COMPARE0A)		// gets called more or less 8 times per millisecond
{
	ticks++;
	refresh_display();
}

// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{
	// ------------------------- Initialize Hardware
	
	DDRB = 0xC3;
	DDRC = 0x00;
	PORTC = 0x3F;	//pullups
	
	DDRD = 0xff; 			// 7 segement display
	PORTD = (1 << 1);

 	// Enable SPI, Master, set clock rate fck/16	-> 500kHz
	DDR_SPI 	|= (1<<DD_MOSI)|(1<<DD_SCK) | (1 << DD_SS);
  	SPCR 		 = (1<<SPE)|(1<<MSTR)|(1<<SPR0);
  	PORTB 		|= (1 << DD_SS); //SS high
  
  		
	// timer 0
	TCCR0A = (0 << WGM01);								// CTC
	TCCR0B = (0 << CS02) | (0 << CS01) | (1 << CS00);	// no prescaler @ 1 Mhz
	TIMSK0 = (1 << OCIE0A);								// enable interrupt
	OCR0A= 250;											// 1 Mhz / 250 -> 4000 Hz
	sei();
	
	last_ticks_seconds = 0;
	
	mode 		= state_init;
	next_mode 	= state_undef;
	write_enable = 0x00;
	
	update_display_buffer();

	values_max[0] = 42;			// frames 
	values_max[1] = 625;		// lines in a frame
	values_max[2] = 615;		// samples per line
	
	// ------------------------- Main Loop
	while(1) {
		//	ticks++;
	
	
		debounce_switches();
		check_buttons();
		check_rotary();
		check_spi();
		
		if (ticks - last_ticks_seconds > 8000) {
			last_ticks_seconds 	= ticks;
			mode 				= next_mode;
			update_display_buffer();
			spi_idx = 3;
			
		}

 	}
	return 0;
}

