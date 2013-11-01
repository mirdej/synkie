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

#define GREEN_LED 6
unsigned long ticks;


SIGNAL(TIMER0_OVF_vect)
{
	//ticks++;
}

	



// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{
	// ------------------------- Initialize Hardware
	
	// PORTA: Encoder, Display Anodes
	DDRA 	= 0xF0;		
	PORTA 	= 0xF0;		

	// PORTB: SPI
	DDRB 	= 0x00;	
	
	// PORTC: Cathodes
	DDRC 	= 0xff;	
	PORTC 	= 0xff;	
	
	DDRD = 0xe0; 	// 1110 0000 -> set PD0..PD4 to inputs -> USB pins
	//PORTD ^= 1 << GREEN_LED;
	
	// timer 0
	TCCR0A = (0 << WGM01);					
	TCCR0B = (1 << CS02) | (0 << CS01) | (1 << CS00);	// 1024 prescaler @ 20 Mhz -> 19khz
	TIMSK0 = (1 << TOIE0);								// enable interrupt
	OCR0A= 190;
	sei();
	
	// ------------------------- Main Loop
	while(1) {
		ticks++;
		if (ticks > 100000000) {
			PORTD ^= 1 << GREEN_LED;
			ticks = 0;
		}
 	}
	return 0;
}

