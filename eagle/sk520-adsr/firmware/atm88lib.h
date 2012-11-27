#ifndef _ATM88LIB_h_
#define _ATM88LIB_h_


#include <avr/io.h>

// PRESCALERS
#define PRESC1 1
#define PRESC8 2 
#define PRESC64 3
#define PRESC256 4
#define PRESC1024 5

//values for PWM mode
#define PWMA_NONE 0  //PWM disabled
#define PWMA_CLEAR 128 //clear output at match 
#define PWMA_SET 192   //set output at match 
#define PWMB_NONE 0  //PWM disabled
#define PWMB_CLEAR 32 //clear output at match
#define PWMB_SET 48   //set output at match

#define PWM1_8BIT 1
#define PWM1_9BIT 2
#define PWM1_10BIT 3
#define PWM1_16BIT_MODE_ON 16
#define PWM1_16BIT_MODE_OFF 0

/************************************************************************
use only values which are defined it will work :)
************************************************************************/


void StartPWM0(int , char , char );
void StartPWM1(int , char , char , char , char);
void StartPWM2(int , char , char );


#endif
