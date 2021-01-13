//------------------------------------------------------------------------------------------
//
// 	SK720 STEP SEQUENCER Firmware
//
//
// Target MCU: ATMEGA644 @ 20Mhz
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2020 Michael Egger, Licensed under GNU GPLv3
//
//
//--------------------------------------------------------------------------------------------

#include <FastLED.h>
#include <SPI.h>
#include <EEPROM.h>

// ...........................................................................CONSTANTS

#define BRIGHTNESS	    50
#define MAX_QUANTIZE_MS	1000
#define MIN_TRIGGERS	20
#define MIN_QUANTIIZE	3
#define MIN_RESET   	20

const int NUM_PIXELS        =   40 ;
const int PIN_LED_QUANTIZE  =   0;
const int PIN_PIXELS        =   1;
const int PIN_QUANTIZE	    =   2;
const int PIN_CS            = 	4;
const int PIN_SCK		    =   7;
const int PIN_MISO		    =   6;
const int PIN_MOSI	        =   5;
const int PIN_TRIGGER	    =   10;
const int PIN_RESET	        =   11;

const int NUM_REGISTERS = 5;
const int NUM_BANKS     = 4;
const int NUM_STEPS     = 8;


const CRGB      BANK_COLOR[]    = { CRGB::Crimson, CRGB::BlueViolet, CRGB::ForestGreen, CRGB::DarkCyan};
const CRGB      STEP_COLOR      =   CRGB::Gray;


//----------------------------------------------------------------------------------------
// debouncing

class TriggerInput {
    private:
        int pin;
        int min_high;
        int high_count;
        bool trigged;
    public:
        TriggerInput(int _pin, int _min);
        bool check();
};

TriggerInput::TriggerInput(int _pin, int _min) {
    pin         = _pin;
    min_high    = _min;
}

bool TriggerInput::check() {
    if (digitalRead(pin)) {
        if (high_count < min_high){ high_count++;}
        else if (!trigged) {
            trigged = true;
            return true;
        }
    } else {
        if (high_count > 0) high_count--;
        else {trigged = false;}
    } 
    return false;
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
CRGB                                    pixels[NUM_PIXELS];
long 									last_ui_interaction;
byte									buttons_raw[NUM_REGISTERS];

byte                                    bank_idx;
byte                                    step_idx;

uint16_t                                steps[NUM_STEPS];

volatile long                           last_quantize;
volatile long                           last_trigger;
volatile bool                           quantized;
volatile bool                           trigger_pending;
volatile bool                           reset_pending;

TriggerInput                            trigger_in(PIN_TRIGGER, MIN_TRIGGERS);     
TriggerInput                            quantize_in(PIN_QUANTIZE, MIN_QUANTIIZE);     
TriggerInput                            reset_in(PIN_RESET, MIN_RESET);     



//----------------------------------------------------------------------------------------
//																		buttons

void check_buttons(){
    static long last_check;
    static byte old_buttons[NUM_REGISTERS];
    bool    something_happened = false;
    
    if (millis() - last_check < 10) return;
    last_check = millis();
    
    int temp;
    SPI.beginTransaction(SPISettings(80000, MSBFIRST, SPI_MODE0));
    digitalWrite(PIN_CS,LOW);
    delayMicroseconds(100);
    digitalWrite(PIN_CS,HIGH);
    cli();
    for (int i = 0; i < NUM_REGISTERS; i++) {
        temp = ~SPI.transfer(0x00);
        buttons_raw[i] = ((temp << 4) & 0xF0 ) | ((temp >> 4) & 0x0F);
        if (buttons_raw[i] != old_buttons[i]) something_happened = true;
    }
    sei();
    SPI.endTransaction();
    
    if (something_happened) {
        something_happened = false;
        byte triggers;
        for (int i = 0; i < NUM_REGISTERS; i++) {
           triggers =  ~old_buttons[i] & buttons_raw[i];
           if (triggers > 0) {
                if(i == 4) {                                            // BANK SELECT
                    for (int bit = 0; bit < NUM_BANKS; bit++) {
                        if (triggers & (1 << bit)) bank_idx = bit;
                    }
                } else {                                                // STEP SELECT
                   for (int bit = 0; bit < 8; bit++) {
                        something_happened = true;

                        if (triggers & (1 << bit)){
                            char btn_nr = i * 8 + bit;
                            char col = btn_nr / NUM_BANKS;
                            char row = btn_nr % NUM_BANKS;
                            char old_row =  (steps[col] >> (bank_idx * 4)) & 0x07;
                            if (row != old_row) {
                                steps[col] = (steps[col] & ~(0x07 << (bank_idx * 4))) | ((row & 0x07) << (bank_idx * 4));
                            } else {
                                steps[col] = (steps[col] & ~(0x07 << (bank_idx * 4))) | (0x07 << (bank_idx * 4));                            
                            }
                        }
                    }
                }
           }
        }
        do_output();
        if (something_happened) {    EEPROM.put(0,steps); }
    }
    
    for (int i = 0; i < NUM_REGISTERS; i++) {
        old_buttons[i] = buttons_raw[i];
    }
}
//----------------------------------------------------------------------------------------
//																		ramp in

void check_ad() {
    static int last_value;
    static int last_step;
    
    //      0 - 5V -> 0..1023
    //      0 - 1V -> 0..204 divided by 8 -> about 25 per step
    //      pin is externally pulled high, so if we're well above 204 no ramp signal is present
    int temp = analogRead(A7);
    temp = (3 * last_value + temp) / 4;
    last_value = temp;
    
    temp = temp / 25;
    if (temp < 12) {                            // leave some room if ramp exceeds 1V a bit
        if (temp < NUM_STEPS) step_idx = temp;
        else step_idx = NUM_STEPS - 1;
        if (step_idx != last_step) {
            last_step = step_idx;
            do_output();
        }
    }
}

//----------------------------------------------------------------------------------------
//																		pixels

void update_leds(){
    static long last_check;
    if (millis() - last_check < 20) return;
    last_check = millis();

    fill_solid(pixels,NUM_PIXELS, CRGB::Black);
    
    //step index display
    for (int i = 0; i < NUM_BANKS; i++){
        pixels[NUM_BANKS * step_idx + i] = STEP_COLOR;
    }
    
    //row display
    // steps are stored as 4bit packets in a 16 bit array
    for (int col = 0; col < NUM_STEPS; col++){
        char row = (steps[col] >> bank_idx * 4) & 0x07;
        if (row < NUM_BANKS) {
            pixels[NUM_BANKS * col + row] = BANK_COLOR[bank_idx];
        }
    }

    // selected bank
    pixels[NUM_STEPS * NUM_BANKS + bank_idx] = BANK_COLOR[bank_idx];
    
    // feedback for button_press
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 8; j++)
        if (buttons_raw[i] & (1 << j)) {
            pixels[8*i + j] = CRGB::Yellow;
        }
    }
    
    FastLED.show(); 
}


//----------------------------------------------------------------------------------------
//																		

void do_output(){
    PORTD = step_idx << 4;
    PORTA = steps[step_idx]         & 0x77;
    PORTC = steps[step_idx] >> 8    & 0x77;
}

void trigger() {
    trigger_pending = false;

    step_idx++;
    step_idx %= NUM_STEPS;
    do_output();
}

void reset() {
    trigger_pending = false;
    reset_pending   = false;
    
    step_idx = 0;
    do_output();
}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP


void setup(){
    // set address output pin direction
    DDRA = 0b01110111;
	DDRC = 0b01110111;
	DDRD = 0b01110000;

    pinMode(PIN_CS, OUTPUT);
    digitalWrite(PIN_CS,HIGH);
	SPI.begin();
	
	pinMode(PIN_LED_QUANTIZE, OUTPUT);
    digitalWrite(PIN_LED_QUANTIZE, HIGH);
    
    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);
    FastLED.setBrightness(BRIGHTNESS);

	for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(1);
    	FastLED.show(); 
  	}
    digitalWrite(PIN_LED_QUANTIZE, LOW);
    
    EEPROM.get(0,steps);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop() {
    check_buttons();
    check_ad();
    update_leds();
    if (quantize_in.check()){
            last_quantize = millis();
            quantized = true;
            digitalWrite(PIN_LED_QUANTIZE, HIGH);
            if (reset_pending) reset();
            else if (trigger_pending) trigger();
    } else {
        if (millis() - last_quantize > MAX_QUANTIZE_MS) {
            quantized = false; 
            digitalWrite(PIN_LED_QUANTIZE, LOW);
        }
    }

    if (quantized) {
        if (trigger_in.check()) trigger_pending = true;
        if (reset_in.check())   reset_pending = true;
    } else {
        if (trigger_in.check()) {trigger(); }
        if (reset_in.check())   {reset();   }
    } 
}