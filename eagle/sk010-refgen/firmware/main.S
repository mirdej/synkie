#include <avr/io.h>

; -------------------------------------------------------------------------
; Register attributions
; -------------------------------------------------------------------------
temp_reg = 0
zero_reg = 1

sync_state_reg = 16
workl_reg = 24
workh_reg = 25

linel_reg = 26
lineh_reg = 27

white = 0x7
yellow = 0x6
cyan = 0x3
green = 0x2
magenta = 0x5
red = 0x4
blue = 0x1
black = 0x0

; -------------------------------------------------------------------------
; Constants
; -------------------------------------------------------------------------
hsync_bit = 3
vsync_bit = 2
bporch_bit = 1
evenodd_bit = 0

hsync_pin = 1 << hsync_bit
vsync_pin = 1 << vsync_bit
bporch_pin = 1 << bporch_bit
evenodd_pin = 1 << evenodd_bit

; -------------------------------------------------------------------------
; Macros
; -------------------------------------------------------------------------
.macro DELAY_LOOP count, count_reg=workl_reg
	ldi \count_reg, \count
99:	dec \count_reg
	brne 99b
.endm

.macro HSYNC_PULSE_86CLK
	cbi _SFR_IO_ADDR(PORTC), hsync_bit
	DELAY_LOOP 27
	nop
	sbi _SFR_IO_ADDR(PORTC), hsync_bit
.endm

.macro EQ_PULSE_38CLK
	cbi _SFR_IO_ADDR(PORTC), hsync_bit
	DELAY_LOOP 11
	nop
	sbi _SFR_IO_ADDR(PORTC), hsync_bit
.endm

.macro VSYNC_PULSE_533CLK
	cbi _SFR_IO_ADDR(PORTC), hsync_bit
	DELAY_LOOP 176
	nop
	sbi _SFR_IO_ADDR(PORTC), hsync_bit
.endm

.macro COLOR_BAR_3L2CLK color, loops=43
	ldi workl_reg, \color
	out _SFR_IO_ADDR(PORTB), workl_reg
	DELAY_LOOP \loops
.endm

; =========================================================================
	.section .text
; -------------------------------------------------------------------------
; main
; -------------------------------------------------------------------------
	.global main
main:
	; Put timer clock prescaler into reset
	ldi workl_reg, 0x83
	out _SFR_IO_ADDR(GTCCR), workl_reg
	
	; Timer0 (subcarrier generation at Fclk / 4)
	; ClkIO / 1; Fast PWM; OC0A pin off; OC0B pin clear on match, set on bottom
	; => COM0A b00, COM0B b10, WGM b111, CS b001
	ldi workl_reg, 0x03
	out _SFR_IO_ADDR(OCR0A), workl_reg
	ldi workl_reg, 0x01
	out _SFR_IO_ADDR(OCR0B), workl_reg
	ldi workl_reg, 0x23
	out _SFR_IO_ADDR(TCCR0A), workl_reg
	ldi workl_reg, 0x09
	out _SFR_IO_ADDR(TCCR0B), workl_reg

	; Timer1 (video line)
	; ClkIO / 1; CTC mode; TOP = 1134
	; => COM1A b00, COM1B b00, WGM b0100, CS 001
;#define SHOW_TIMER1 1
#ifdef SHOW_TIMER1
	ldi workh_reg, 0x40	; toggle OCR1A pin on timer reset
	sts _SFR_MEM_ADDR(TCCR1A), workh_reg
#else
	sts _SFR_MEM_ADDR(TCCR1A), zero_reg
#endif
	sts _SFR_MEM_ADDR(TCCR1B), workl_reg	; assuming workl_reg == 0x09!!
	ldi workl_reg, 0x6e
	ldi workh_reg, 0x04	; 0x046e == 1134
	sts _SFR_MEM_ADDR(OCR1AH), workh_reg
	sts _SFR_MEM_ADDR(OCR1AL), workl_reg
	
	; initialize line counter
	; start at first vblank line (line 5)
	clr lineh_reg
	ldi linel_reg, 5
	
	; PORTB: PB2-0=RGB out
	ldi workl_reg, 0x07
	out _SFR_IO_ADDR(DDRB), workl_reg
	; PORTC: PC3=SYNC, PC2=VSYNC, PC1=B-PORCH, PC0=ODD/EVEN
	ldi sync_state_reg, hsync_pin | vsync_pin | bporch_pin | evenodd_pin
	out _SFR_IO_ADDR(PORTC), sync_state_reg
	out _SFR_IO_ADDR(DDRC), sync_state_reg
	; PORTD: PD5=Subcarrier (OC0B)
	ldi workl_reg, 0x20
	out _SFR_IO_ADDR(DDRD), workl_reg

	; Start timers
	out _SFR_IO_ADDR(GTCCR), zero_reg

blank_line1:
	HSYNC_PULSE_86CLK
	; ck 86
	
	DELAY_LOOP 255
	DELAY_LOOP 93
	nop
	;ck 1131
	
	; check for end of blanking
	; at this point, line counter is always between 5 and 21 (inclusive)
	inc linel_reg
	cpi linel_reg, 22
	brne blank_line1
	nop	; compensate for difference between false and true branches
	
halfblank_line1:
	HSYNC_PULSE_86CLK
	; ck 86
	DELAY_LOOP 165
	
	; ck 581
	COLOR_BAR_3L2CLK green
	; clk 712
	COLOR_BAR_3L2CLK magenta
	; clk 843
	COLOR_BAR_3L2CLK red
	; clk 974
	COLOR_BAR_3L2CLK blue
	; clk 1105
	ldi workl_reg, black
	out _SFR_IO_ADDR(PORTB), workl_reg
	; ck 1107
	DELAY_LOOP 9
	; at this point, line counter is always 22
	inc linel_reg
	
image_line1:
	HSYNC_PULSE_86CLK
	; ck 86
	DELAY_LOOP 34
	; ck 188
	COLOR_BAR_3L2CLK white
	; ck 319
	COLOR_BAR_3L2CLK yellow
	; ck 450
	COLOR_BAR_3L2CLK cyan
	; ck 581
	COLOR_BAR_3L2CLK green
	; ck 712
	COLOR_BAR_3L2CLK magenta
	; ck 843
	COLOR_BAR_3L2CLK red
	; ck 974
	COLOR_BAR_3L2CLK blue
	; ck 1105
	ldi workl_reg, black
	out _SFR_IO_ADDR(PORTB), workl_reg
	; ck 1107
	
	DELAY_LOOP 7
	; ck 1128	
	adiw linel_reg, 1
	; stop at line 310 = 0x0136
	ldi workh_reg, 0x01
	cpi linel_reg, 0x36
	cpc lineh_reg, workh_reg
	brne image_line1
	nop

eqpulse_line1a:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 176
	nop
	nop
	; ck 568
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 174
	nop
	nop
	
	; ck 1130
	adiw linel_reg, 1
	; we know lineh_reg is 1 here
	cpi linel_reg, 0x38	; line 312 = 0x0138
	brne eqpulse_line1a
	nop
	
eqvsync_line1:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 176
	nop
	nop
	; ck 568
	VSYNC_PULSE_533CLK
	; ck 1101
	DELAY_LOOP 10
	nop
	nop
	
	; ck 1133
	adiw linel_reg, 1

vsync_line1:
	VSYNC_PULSE_533CLK
	; ck 533
	DELAY_LOOP 11
	nop
	nop
	; ck 568
	VSYNC_PULSE_533CLK
	; ck 1101
	DELAY_LOOP 9
	nop
	nop
	
	; ck 1130
	adiw linel_reg, 1
	; we know lineh_reg is 1 here
	cpi linel_reg, 0x3b	; line 315 = 0x013b
	brne vsync_line1
	nop
	
eqpulse_line1b:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 176
	nop
	nop
	; ck 568
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 174
	nop
	nop
	
	; ck 1130
	adiw linel_reg, 1
	cpi linel_reg, 0x3d	; line 317 = 0x013d
	brne eqpulse_line1b
	nop
	
eqhalfpulse_line1:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 255
	DELAY_LOOP 110
	
	; ck 1133
	adiw linel_reg, 1

blank_line2:
	HSYNC_PULSE_86CLK
	; ck 86
	
	DELAY_LOOP 255
	DELAY_LOOP 93
	nop
	;ck 1131
	
	; check for end of blanking
	; at this point, line counter is always between 318 and 334 (inclusive)
	inc linel_reg
	cpi linel_reg, 0x4F
	brne blank_line2
	nop	; compensate for difference between false and true branches

image_line2:
	HSYNC_PULSE_86CLK
	; ck 86
	DELAY_LOOP 34
	; ck 188
	COLOR_BAR_3L2CLK white
	; ck 319
	COLOR_BAR_3L2CLK yellow
	; ck 450
	COLOR_BAR_3L2CLK cyan
	; ck 581
	COLOR_BAR_3L2CLK green
	; ck 712
	COLOR_BAR_3L2CLK magenta
	; ck 843
	COLOR_BAR_3L2CLK red
	; ck 974
	COLOR_BAR_3L2CLK blue
	; ck 1105
	ldi workl_reg, black
	out _SFR_IO_ADDR(PORTB), workl_reg

	; ck 1107
	DELAY_LOOP 7
	; ck 1128	
	adiw linel_reg, 1
	; stop at line 622 = 0x026e
	ldi workh_reg, 0x02
	cpi linel_reg, 0x6e
	cpc lineh_reg, workh_reg
	brne image_line2
	nop
	
halfimage_line2:
	HSYNC_PULSE_86CLK
	; ck 86
	DELAY_LOOP 34
	; ck 188
	; ck 188
	COLOR_BAR_3L2CLK white
	; ck 319
	COLOR_BAR_3L2CLK yellow
	; ck 450
	COLOR_BAR_3L2CLK cyan, 38
	; ck 566
	ldi workl_reg, 0x0
	out _SFR_IO_ADDR(PORTB), workl_reg
	; ck 568
	
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 175
	nop
	nop

	; ck 1133	
	adiw linel_reg, 1
	
eqpulse_line2a:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 176
	nop
	nop
	; ck 568
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 174
	
	; ck 1128
	adiw linel_reg, 1
	cpi linel_reg, 0x71	; line 625 = 0x0271
	breq 1f
	nop
	rjmp eqpulse_line2a
1:
	clr linel_reg
	clr lineh_reg
	
vsync_line2:
	VSYNC_PULSE_533CLK
	; ck 533
	DELAY_LOOP 11
	nop
	nop
	; ck 568
	VSYNC_PULSE_533CLK
	; ck 1101
	DELAY_LOOP 9
	nop
	nop
	
	; ck 1130
	adiw linel_reg, 1
	; we know lineh_reg is 0 here
	cpi linel_reg, 0x02	; line 2
	brne vsync_line2
	nop
	
halfvsync_line2:
	VSYNC_PULSE_533CLK
	; ck 533
	DELAY_LOOP 11
	nop
	nop
	; ck 568
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 175
	nop
	nop
	
	; ck 1133
	adiw linel_reg, 1
	
eqpulse_line2b:
	EQ_PULSE_38CLK
	; ck 38
	DELAY_LOOP 176
	nop
	nop
	; ck 568
	EQ_PULSE_38CLK
	; ck 606
	DELAY_LOOP 174
	
	; ck 1128
	adiw linel_reg, 1
	cpi linel_reg, 0x5	; line 5 = 0x0005
	breq 1f
	nop
	rjmp eqpulse_line2b
1:
	rjmp blank_line1
