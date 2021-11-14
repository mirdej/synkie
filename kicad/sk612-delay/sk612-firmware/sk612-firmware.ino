#include "Timer.h"
#include "ADV7391.h"
#include "ADV7280.h"
#include <FastLED.h>
#include "Wire.h"

#define PIN_SCL     22
#define PIN_SDA     21

#define PIN_PIX         23
#define PIN_RESET_IN    19
#define PIN_RESET_OUT   18

#define NUM_LEDS    1

CRGB                            pixel[NUM_LEDS];
Timer                           t;

ADV7391             video_out = ADV7391();
ADV7280             video_in  = ADV7280();


//---------------------------------------------------------------------------------------

void scan_i2c(){  
    byte error, address;
      int nDevices;
      Serial.println("Scanning...");
      nDevices = 0;
      for(address = 1; address < 127; address++ ) {
        Wire.beginTransmission(address);
        error = Wire.endTransmission();
        if (error == 0) {
          Serial.print("I2C device found at address 0x");
          if (address<16) {
            Serial.print("0");
          }
          Serial.println(address,HEX);
          nDevices++;
        }
        else if (error==4) {
          Serial.print("Unknow error at address 0x");
          if (address<16) {
            Serial.print("0");
          }
          Serial.println(address,HEX);
        }    
      }
      if (nDevices == 0) {
        Serial.println("No I2C devices found\n");
      }
      else {
        Serial.println("done\n");
      }
}

//---------------------------------------------------------------------------------------

void test() {
    video_in.print_status();
}


void test2() {
    static uint8_t hue;
    video_out.hue(hue++);
}
//========================================================================================
//---------------------------------------------------------------------------------------

void setup(){
    Serial.begin(115200);
    delay(1000);
    Serial.println("Hello");
    Serial.println("");
    
    

    Wire.begin(PIN_SDA, PIN_SCL);
    video_in.begin(PIN_RESET_IN);
    video_out.begin(PIN_RESET_OUT);
	
	FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_LEDS);
    
  /*  for (int hue = 0; hue < 360; hue++) {
        fill_rainbow( pixel, NUM_LEDS, hue, 7);
        delay(3);
        FastLED.show(); 
    }*/

     
    
    scan_i2c();
    
    video_out.register_dump(10);
    video_in.register_dump(100);
//    video_out.color_bars(true);
 
    Serial.println();
    Serial.println("SETUP done");
    pixel[0] = CRGB::Green;
    FastLED.show();
    
       // helloworld test
    pinMode(4,OUTPUT);
    pinMode(16,OUTPUT);
    pinMode(17,OUTPUT);
    digitalWrite(4,HIGH);
    digitalWrite(16,HIGH);
    digitalWrite(17,HIGH);

//    t.every(1000,test);
   // t.every(50,test2);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop() {
    t.update();
}

