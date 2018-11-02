#include <Adafruit_NeoPixel.h>
#include <Timer.h>
#define PIN            0
#define NUMPIXELS      2
Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

float volts_pos,volts_neg;
Timer	t;

void setup() {
	//analogReference(INTERNAL2V56);
	pixels.setBrightness(30);
	pixels.begin();
	
	for (char i=0; i < 4; i++) {
		pixels.setPixelColor(0, pixels.Color(255,255,0)); 
		pixels.setPixelColor(1, pixels.Color(0,0,0)); 
    	pixels.show(); 
		delay(15);
		pixels.setPixelColor(0, pixels.Color(0,0,0)); 
		pixels.setPixelColor(1, pixels.Color(255,255,0)); 
    	pixels.show(); 
		delay(150);
	}
	pixels.setPixelColor(0, pixels.Color(0,0,0)); 
	pixels.setPixelColor(1, pixels.Color(0,0,0)); 
    pixels.show(); 
	
	t.every(50,update);
}

void update () {
	float power;

	if (volts_pos < 0.7) {
		power = volts_pos / 0.7;
		power *= 255.;
		pixels.setPixelColor(0, pixels.Color(0,power,0)); 
	} else if (volts_pos < 1.4) {
		power = (volts_pos-0.7) / 0.7;
		power *= 255.;
		pixels.setPixelColor(0, pixels.Color( power,255,0));
	} else {
		pixels.setPixelColor(0, pixels.Color(255,0,0)); 
	}
	
	if (volts_neg < 0.7) {
		power = sqrt(volts_neg / 0.7);
		power *= 255.;
		pixels.setPixelColor(1, pixels.Color(0,0,power)); 
	} else if (volts_neg < 1.4) {
		power = sqrt((volts_neg-0.7) / 0.7);
		power *= 255.;
		pixels.setPixelColor(1, pixels.Color( power,0,255));
	} else {
		pixels.setPixelColor(1, pixels.Color(255,0,0)); 
	}
	
	volts_pos = 0.;
	volts_neg = 0.;

    pixels.show(); 
}


void loop() {
	float temp = analogRead(A2);
	temp = temp / 205.;
	if (temp > volts_pos) volts_pos = temp;
	temp = analogRead(A3);
	temp = temp / 205.;
	if (temp > volts_neg) volts_neg = temp;
	t.update();
}
