//----------------------------------------------------------------------------------------
//
//	sk562  Firmware		
//						
//		Target MCU: ATTINY861
//		Copyright:	2021 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

#include <FastLED.h>


#define PIN_PIX 1
CRGB                        pixel[1];



void setup() {
    FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, 1);
//	FastLED.setBrightness(20);

	for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixel, 1, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}


}


void loop() {
    int r = analogRead(A0)/4;
    int g = analogRead(A1)/4;
    int b = analogRead(A2)/4;
    
    r += analogRead(A3);
    g += analogRead(A4);
    b += analogRead(A5);
    
    pixel[0]= CRGB(r,g,b);
    FastLED.show(); 
    delay(10);
}

