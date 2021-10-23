//------------------------------------------------------------------------------------------
//
// 	SK008 Subcarrier Firmware
//
//
// Target MCU: ATTINY861
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2021 Michael Egger, Licensed under GNU GPLv3
//
//
//----------------------------------------------------------------------------------------

#define PIN_HSYNC   3
#define PIN_VSYNC   2
#define PIN_ODD     6
#define PIN_INHIBIT 0



//----------------------------------------------------------------------------------------
//																				GLOBALS

volatile int            line_num;
volatile bool           odd;     	


void hsync() {
    line_num++;
    if (line_num < 20) return;
    if (line_num % 2)       PORTA = 0;
    else                    PORTA = 1;
}

void vsync() {
    line_num = 0;
    odd = digitalRead(PIN_ODD);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP


void setup(){
    pinMode(PIN_INHIBIT,OUTPUT);
    attachInterrupt(digitalPinToInterrupt(PIN_HSYNC), hsync, RISING);
    attachInterrupt(digitalPinToInterrupt(PIN_VSYNC), vsync, RISING);
    digitalWrite(PIN_INHIBIT, LOW);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop() {
 //   if (line_num > 160) {
//    }
}