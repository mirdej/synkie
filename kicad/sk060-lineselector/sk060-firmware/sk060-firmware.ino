//----------------------------------------------------------------------------------------
//
//	sk060-lineselector  Firmware		
//						
//		Target MCU: ATTINY861
//		Copyright:	2021 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

#include <Arduino.h>
#include <SPI.h>
#include <U8x8lib.h>
#include <MD_REncoder.h>

#define MAX_LINES 311
#define PIN_HSYNC 2
#define PIN_VSYNC 3
#define PIN_BTN    10

#define PIN_OUT_1 0
#define PIN_OUT_2 1

U8X8_SSD1306_128X32_UNIVISION_HW_I2C u8x8(7,9);
MD_REncoder R = MD_REncoder(11, 12);

signed int selected_line_1 = 22;
signed int selected_line_2 = 220;
volatile signed int line_count;
int out_select;
int last_btn;
volatile long last_sync;
int had_sync;

//----------------------------------------------------------------------------------------
void v_sync() {
    line_count = -5;
    last_sync = millis();
}

//----------------------------------------------------------------------------------------
void h_sync() {
    line_count++;
    if (line_count == selected_line_1) {digitalWrite(PIN_OUT_1, HIGH);}
    else {digitalWrite(PIN_OUT_1, LOW);}
    if (line_count == selected_line_2) {digitalWrite(PIN_OUT_2, HIGH);}
    else {digitalWrite(PIN_OUT_2, LOW);}
}

//----------------------------------------------------------------------------------------
void zero_pad(int n){
    if (n < 100) u8x8.print(" ");
    if (n < 10)  u8x8.print(" ");
}

//----------------------------------------------------------------------------------------
void update_display(){
    u8x8.setCursor(0, 0);

    if (out_select == 0) u8x8.print("> ");
    else (u8x8.print("  "));
    zero_pad(selected_line_1);
    u8x8.print(selected_line_1);
    
    if (millis() - last_sync > 100) {
        u8x8.print("  NO SIGNAL");
    } else  {
        u8x8.print("           ");
    }
    
    u8x8.setCursor(0, 18);
 
    if (out_select != 0) u8x8.print("> ");
    else (u8x8.print("  "));
    zero_pad(selected_line_2);
    u8x8.print(selected_line_2);
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP
void setup(void){
    R.begin();

    u8x8.begin();
    u8x8.setFlipMode(1);
    u8x8.setFont(u8x8_font_7x14B_1x2_r);
    u8x8.drawString(0,0,"sk060");
    u8x8.drawString(0,18,"Line Selector");
    delay(1000);
    u8x8.clear();

    update_display();
    
    pinMode(PIN_OUT_1, OUTPUT);
    digitalWrite(PIN_OUT_1, LOW);
    
    pinMode(PIN_OUT_2, OUTPUT);
    digitalWrite(PIN_OUT_2, LOW);

    pinMode(PIN_BTN, INPUT_PULLUP);
    pinMode(PIN_VSYNC, INPUT_PULLUP);
    pinMode(PIN_HSYNC, INPUT_PULLUP);
    
    attachInterrupt(digitalPinToInterrupt(PIN_VSYNC), v_sync, RISING);
    attachInterrupt(digitalPinToInterrupt(PIN_HSYNC), h_sync, FALLING);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
void loop(void){
  
    if (millis() - last_sync > 100) {
        if (had_sync) {
           update_display();
        }
        had_sync = 0;
    } else {
        if (!had_sync) {
            update_display();
        }
        had_sync = 1;
    }
    
    int btn = digitalRead(PIN_BTN);
    if (btn != last_btn) {
    if (btn == 0) {
        out_select++;
        out_select %= 2;
        update_display();
    }
    }
    last_btn = btn;


    uint8_t x = R.read();

    if (x) {
        int s = R.speed()+1;
        if (out_select) {
            if (x == DIR_CW)    selected_line_2 -= s;
            else                selected_line_2 += s;
        } else {
            if (x == DIR_CW)    selected_line_1 -= s;
            else                selected_line_1 += s;
        }


        if (selected_line_1 < 1)            selected_line_1 = MAX_LINES;
        if (selected_line_1 > MAX_LINES)    selected_line_1 = 1;
        if (selected_line_2 < 1)            selected_line_2 = MAX_LINES;
        if (selected_line_2 > MAX_LINES)    selected_line_2 = 1;

        update_display();
    }

}