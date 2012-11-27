#include "atm88lib.h"


void StartPWM0(int prescaler, char channel0, char channel1)
{
	TCCR0B = prescaler;		//set prescaler
	TCCR0A = channel0;		//set mode of ch1
	TCCR0A += channel1;		//set mode of ch2
	TCCR0A ++;				//wgm0=1 Phase PWM Mode
}

void StartPWM1(int prescaler, char channel0, char channel1, char bits, char mode16b)
{
	TCCR1B = prescaler;		//set prescaler
	TCCR1A = channel0;		//set mode of ch1
	TCCR1A += channel1;		//set mode of ch2
	TCCR1A += bits;			//wgm0=1 Phase PWM Mode
	TCCR1B += mode16b;

}

void StartPWM2(int prescaler, char channel0, char channel1)
{
	TCCR2B = prescaler;		//set prescaler
	TCCR2A = channel0;		//set mode of ch1
	TCCR2A += channel1;		//set mode of ch2
	TCCR2A ++;				//wgm0=1 Phase PWM Mode
}


