//---------------------------------------------------------------------------------------------
//	REFERENCE GENERATOR
//
// Part of the Synkie Project: www.synkie.net
//
// © 2014 Max Egger, Licensed under GNU GPLv3
//
//--------------------------------------------------------------------------------------------
// ==============================================================================
// includes
// ------------------------------------------------------------------------------
// AVR Libc (see http://www.nongnu.org/avr-libc/)
#include <avr/io.h>			// include I/O definitions (port names, pin names, etc)
#include <avr/interrupt.h>

#define NOP __asm__ __volatile__("nop"::)

#define NO_LINE 999
#define HSYNC_PIN (1 << 3)
#define VSYNC_PIN (1 << 2)
#define BPORCH_PIN (1 << 1)
#define EVENODD_PIN (1 << 0)

#define DELAY(count) do { uint8_t cur=count; do { NOP; } while(--cur) ; } while (0)

volatile uint16_t current_line = NO_LINE;
volatile uint8_t in_image = 0;
volatile uint8_t syncsig_state = 0xff;

volatile uint8_t bar = 0;

enum HalfLineType {
	Line_none = 0,
	Line_vsync = 1,
	Line_eqpulse = 2,
	Line_blank = 3,
	Line_image = 4,
};

volatile uint8_t next_halfline = Line_none;
volatile uint8_t next_line = Line_blank;
volatile uint8_t in_vsync = 0;
volatile uint8_t second_half = 0;

uint8_t const bars[] = { 0x7, 0x6, 0x3, 0x2, 0x5, 0x4, 0x1, 0x0 };

ISR(TIMER2_COMPA_vect)
{
	PORTB = bars[bar++];
	OCR2A = 115;
	if (bar == 8) {
		TIMSK2 = 0;
		bar = 0;
	}
}

ISR(TIMER1_COMPA_vect)
{
	PORTB = 0x0;
	PORTC = syncsig_state & ~HSYNC_PIN;
	TIMSK2 = 0x00;
	TCNT2 = TCNT1L;
	in_vsync = 0;
	in_image = 0;
	second_half = 0;
	switch(next_line)
	{
	case Line_eqpulse:
		DELAY(8);
		NOP;
		NOP;
		NOP;
		NOP;
		NOP;
		NOP;
		PORTC |= HSYNC_PIN;
		break;
	
	case Line_image:
		in_image = 1;
		bar = 0;
		OCR2A = 185;
		TIFR2 = 0x07;
		TIMSK2 = 0x02;
		DELAY(10);
		PORTC |= HSYNC_PIN;
		sei();
		break;
	
	case Line_blank:
		DELAY(14);
		PORTC |= HSYNC_PIN;
		break;
	
	case Line_vsync:
		OCR1B = 530;
		TIFR1 |= 0x04;
		TIMSK1 |= 0x04;
		in_vsync = 1;
		break;
	}
	
	if (current_line == NO_LINE) {
		current_line = 5;
		next_halfline = Line_none;
		next_line = Line_blank;
		syncsig_state = 0xff;
	}
	else {
		++current_line;
		if (current_line > 624)
			current_line = 0;
		
		if (current_line <= 1) {
			next_halfline = Line_vsync;
			next_line = Line_vsync;
		}
		else if (current_line <= 3) {
			syncsig_state |= VSYNC_PIN;
			next_halfline = Line_eqpulse;
			next_line = Line_eqpulse;
			if (current_line == 2) {
				syncsig_state |= VSYNC_PIN;
			}
		}
		else if (current_line <= 4) {
			next_halfline = Line_eqpulse;
			next_line = Line_blank;
		}
		else if (current_line <= 21) {
			next_halfline = Line_none;
			next_line = Line_blank;
		}
		else if (current_line <= 308) {
			next_halfline = Line_none;
			next_line = Line_image;
		}
		else if (current_line <= 309) {
			next_halfline = Line_none;
			next_line = Line_eqpulse;
		}
		else if (current_line <= 311) {
			next_halfline = Line_eqpulse;
			next_line = Line_eqpulse;
			if (current_line == 311) {
				syncsig_state &= ~VSYNC_PIN;
				syncsig_state &= ~EVENODD_PIN;
			}
		}
		else if (current_line <= 313) {
			next_halfline = Line_vsync;
			next_line = Line_vsync;
		}
		else if (current_line <= 314) {
			syncsig_state |= VSYNC_PIN;
			next_halfline = Line_vsync;
			next_line = Line_eqpulse;
		}
		else if (current_line <= 316) {
			next_halfline = Line_eqpulse;
			next_line = Line_eqpulse;
		}
		else if (current_line <= 333) {
			next_halfline = Line_none;
			next_line = Line_blank;
		}
		else if (current_line <= 621) {
			next_halfline = Line_none;
			next_line = Line_image;
		}
		else if (current_line <= 623) {
			next_halfline = Line_eqpulse;
			next_line = Line_eqpulse;
		}
		else {
			next_halfline = Line_eqpulse;
			next_line = Line_vsync;
			syncsig_state &= ~VSYNC_PIN;
			syncsig_state |= EVENODD_PIN;
		}
	}
	if (!in_vsync && next_halfline != Line_none)
	{
		OCR1B = 567;
		TIFR1 |= 0x04;
		TIMSK1 |= 0x04;
	}
}

ISR(TIMER1_COMPB_vect)
{
	if (in_vsync)
	{
		OCR1B = 567;
		PORTC |= HSYNC_PIN;
		in_vsync = 0;
		if (second_half)
			TIMSK1 &= ~0x04;
		return;
	}
	else
	{
		PORTC &= ~HSYNC_PIN;
		second_half = 1;
		switch(next_halfline)
		{
		case Line_eqpulse:
			TIMSK1 &= ~0x04;
			DELAY(8);
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			NOP;
			PORTC |= HSYNC_PIN;
			break;
	
		case Line_vsync:
			OCR1B = 1097;
			in_vsync = 1;
			break;
		}
	}
}

// ==============================================================================
// - main
// ------------------------------------------------------------------------------
int main(void)
{
	// Initialize Timer0 (subcarrier generation at Fclk / 4)
	// ClkIO / 1; Fast PWM; OC0A pin off; OC0B pin clear on match, set on bottom
	// => COM0A b00, COM0B b10, WGM b111, CS b001
	OCR0A = 0x03;
	OCR0B = 0x01;
	TCCR0A = 0x23;
	TCCR0B = 0x09;
	
	// Initialize Timer1 (new line interrupt)
	// ClkIO / 1; CTC mode; TOP = 1135, OCB @ 567 (half line)
	// => COM1A b00, COM1B b00, WGM b0100, CS 001
	TCCR1A = 0x00;
	TCCR1B = 0x09;
	OCR1A = 1134;
	OCR1B = 567;
	// Enable OC1A interrupt
	TIMSK1 = 2;
	
	// Initialize Timer2 (color bars)
	TCCR2A = 0x02;
	TCCR2B = 0x01;
	
	// Configure ports
	
	// PORTC: 0=EVEN/ODD, 1=BACKPORCH, 2=VSYNC, 3=HSYNC (actually composite sync)
	PORTC = 0x07;
	DDRC = HSYNC_PIN | VSYNC_PIN | BPORCH_PIN | EVENODD_PIN;
	// PD5: Subcarrier (OC0B)
	DDRD = 1 << 5;
	// PB2-0: RGB
	DDRB = 0x07;
	
	sei();
	while(1) {}
	return 0;
}
