#include <Adafruit_NeoPixel.h>

Adafruit_NeoPixel strip = Adafruit_NeoPixel(2, 4, NEO_GRB + NEO_KHZ800);

uint32_t colors[16][2] = {
	{strip.Color(  0	,	0	,	10	)		, strip.Color(  0	,	0	,	10	)},
	{strip.Color(  0	,	0	,	10	)		, strip.Color(  0	,	0	,	255	)},
	{strip.Color(  0	,	0	,	255	)		, strip.Color(  0	,	0	,	10	)},
	{strip.Color(  0	,	0	,	255	)		, strip.Color(  0	,	0	,	255	)},

	{strip.Color(  10	,	0	,	10	)		, strip.Color( 10	,	0	,	10	)},
	{strip.Color(  10	,	0	,	10	)		, strip.Color( 255	,	0	,	10	)},
	{strip.Color(  255	,	0	,	10	)		, strip.Color( 10	,	0	,	10	)},
	{strip.Color(  255	,	0	,	10	)		, strip.Color( 255	,	0	,	10	)},

	{strip.Color(  10	,	10	,	0	)		, strip.Color(  10	,	10	,	0	)},
	{strip.Color(  10	,	10	,	0	)		, strip.Color(  255	,	255	,	0	)},
	{strip.Color(  255	,	255	,	0	)		, strip.Color(  10	,	10	,	0	)},
	{strip.Color(  255	,	255	,	0	)		, strip.Color(  255	,	255	,	0	)},

	{strip.Color(  10	,	10	,	10	)		, strip.Color( 10	,10		,	10	)},
	{strip.Color(  10	,	10	,	10	)		, strip.Color( 255	,255	,	255	)},
	{strip.Color(  255	,	255	,	255	)		, strip.Color( 10	,10		,	10	)},
	{strip.Color(  255	,	255	,	255	)		, strip.Color( 255	,255	,	255	)}
};

char cnt;

void setup() {
	strip.begin();
	strip.setBrightness(255); //adjust brightness here
	strip.show(); // Initialize all pixels to 'off'
  
 	pinMode(3,INPUT);
 	pinMode(2,INPUT);
 	pinMode(1,INPUT);
 	pinMode(0,INPUT);
}
 
void loop() {
	char in = PINB;
	in %= 16;
	
	if (cnt != in) {
		cnt = in;
		strip.setPixelColor(0,colors[cnt][0]);
		strip.setPixelColor(1,colors[cnt][1]);
		strip.show(); 
	}
	delay (50);
 }
  
