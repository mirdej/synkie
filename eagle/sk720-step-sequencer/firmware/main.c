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
#include "light_ws2812.h"

// ==============================================================================
// Globals
// ------------------------------------------------------------------------------

unsigned char insync; 			// flag if we're changing outputs synced to video frame rate
unsigned char step_idx;
unsigned char steps[8];
unsigned char last_buttons[5];

unsigned char bank;

#define PIXELS 36
struct cRGB colors[8];
struct cRGB led[PIXELS];
unsigned char leds_changed;

// ==============================================================================
// Functions
// ------------------------------------------------------------------------------

void output() {
	PORTC = (PORTC & ~0x07) | (step_idx & 0x07);	// output address
	PORTD = steps[step_idx];						// set muxes
	leds_changed = 1;
}

void trigger() {
	step_idx++;
	step_idx %=8;
	if (!insync) {
		output();
	}
}

//------------------------------------------ check SPI

unsigned char SPI_transmit(unsigned char cData) {
	SPDR = cData;
	while(!(SPSR & (1 << SPIF))){ ; }
	return SPDR;
}

void checkSPI(void) {
	unsigned char i,j,triggers,temp,step,mux;

	PORTB |= (1 << 2); // latch
	for (j = 0; j<5; j++ ) {
		temp = SPI_transmit(0);
		temp = ~temp;

		if (temp != last_buttons[j]) {
			
			triggers = temp & ~last_buttons[j];

			for (i = 0; i < 8; i++) {
				if (triggers & (1 << i)) {
					leds_changed = 1;
					
					if (j == 4) {				// bank select
						if (i > 3) {				// don't look at unconnected row
							bank = i - 4;
						}
					} else {					// set step
						step = j*2;
						if (i > 3) {
							step++;
							mux = i-4;
						} else {
							mux = i;
						}
						
						steps[step] &= (0x03 	<< (bank*2));		// mask
						steps[step] |= (mux 	<< (bank*2));		// set new value
					}
				}
			}	
		}
		last_buttons[j] = temp;
	}
	PORTB &= ~(1 << 2); // unlatch
}


void update_leds() {
	if (!leds_changed) return;
	leds_changed = 0;
	
	unsigned char i,a;
	struct cRGB color1,color2;
	color1 		= colors[bank+2];
	color2.r 	= color1.r/4;
	color2.g 	= color1.g/4;	
	color2.b 	= color1.b/4;
	
	for (i = 0; i < 36; i++) { // set all to black first, I'm too lazy
		led[i] = colors[0]; 		// black
	}

	for (i = 0; i < 8; i++ ) {
		if (i == step_idx) {
			led[(i*4)] 		= color2;
			led[(i*4) + 1] 	= color2;
			led[(i*4) + 2] 	= color2;
			led[(i*4) + 3] 	= color2;
		}
		
		a = steps[i] >> (bank * 2);
		a &= 0x03;
		led[(i*4)+a] = color1;
	}
	
	led[32 + bank] = color1; 			// bank color
}

// ------------------------------------------------------------------------------
// Init
// ------------------------------------------------------------------------------
void init (void) {
	step_idx = 0;
	
	//PORTB:  ODD/even input, SPI
	DDRB 	= (1 << PB2) | (1 << PB1);	// PB1: Neopixels, PB2: Latch for buttons
	PORTB 	= (1 << PC0);	//pull up sync in??
	
	//PORTC
	DDRC 	= (1 << PC2) | (1 << PC1) | (1 << PC0); 		// Address Output
	PORTC 	= (1 << PC5) | (1 << PC4) | (1 << PC3); 						// pullup for trigger & reset inputs & in-sync input
	
	//PORTD:	Muxes
	DDRD 	= 0xff;
	
	// ------------------		Pin change Interrupts:
	// Trigger on PC3 = PCINT11
	// Reset on PC4 = PCINT12	
	// Odd/EVEN on PCINT0
	PCICR 	= (1 << PCIE1) | (1 << PCIE0);
	PCMSK1 	= (1 << PCINT12) |(1 << PCINT11);
	PCMSK0  = (1 << PCINT2);
		
	
	// ------------------		ADC -> 0-0.7V Ramp input on ADC7	
	ADCSRA 	= (1 << ADEN | 1 << ADATE | 1 << ADIE);						// Enable ADC, free running mode, ADC Interrupt
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1);								// prescaler 64
	ADMUX 	= (1 << ADLAR) | 0x07;										// ADC7, we're only reading 8bits, so left adjust result
	ADCSRA |= (1 << ADSC);												// Start Conversion
	

	wdt_enable(WDTO_30MS);			// enable watchdog timer
	sei();
}


// ------------------------------------------------------------------------------
// Interrupts
// ------------------------------------------------------------------------------


// ------------------------------------------------------------------------------
// 													odd/even - vertical blanking 25Hz
// 											
//	check buttons, output steps if in sync with video

ISR (PCINT0_vect) {  	
	// check switches
	insync = PINC & (1 << PC5);
	
	// check buttons
	checkSPI();
	
	// set leds
	ws2812_sendarray((uint8_t *)led,PIXELS*3);

	// set muxes and address output
	output();
}

// ------------------------------------------------------------------------------
// 													Trigger 

ISR (PCINT11_vect) {
	if (PINC & (1 << PC3)) {					// positive edge only
		trigger();
	}
}  

// ------------------------------------------------------------------------------
// 													Reset 

ISR (PCINT12_vect) {
	if (PINC & (1 << PC4)) {					// positive edge only
		step_idx = 0;
		if (!insync) {
			output();
		}
	}
}  


// ------------------------------------------------------------------------------
// 														ADC complete interrupt

ISR (ADC_vect) {
	unsigned char trigger_level;
	trigger_level = step_idx + 1;
	trigger_level %= 8;
	trigger_level = trigger_level * 32;
	if (ADCH > trigger_level){
		trigger();
	}
	
	//todo: backwards
}





// ==============================================================================
// main
// ------------------------------------------------------------------------------

int main (void) {

	//Rainbowcolors
    colors[0].r=0; colors[0].g=0; colors[0].b=0;	// black
    colors[1].r=255; colors[1].g=000; colors[1].b=000;//red
    colors[2].r=255; colors[2].g=100; colors[2].b=000;//orange
    colors[3].r=100; colors[3].g=255; colors[3].b=000;//yellow
    colors[4].r=000; colors[4].g=255; colors[4].b=000;//green
    colors[5].r=000; colors[5].g=100; colors[5].b=255;//light blue (türkis)
    colors[6].r=000; colors[6].g=000; colors[6].b=255;//blue
    colors[7].r=100; colors[7].g=000; colors[7].b=255;//violet


	init();

	while(1) {
		wdt_reset();	
		update_leds();		// low priority led update;	
	}
	return 0;
}	