//------------------------------------------------------------------------------
// AUDIO SPECTRUM Analyser									Teensy 3.2
//
//
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2018 Michael Egger, Licensed under GNU GPLv3
//
// based on https://github.com/prickle/TeensySpectrumAnalyser/blob/master/TeensySpectrumAnalyser.ino
//--------------------------------------------------------------------------------------------

/*PINS

0		RX1(MIDI)
1		TX1(MIDI)
2		Pixels
3		Encoder		(PWM)
4		Encoder		(PWM)
5		Level 1			(PWM)
6		Level 2			(PWM)
7									 DOUT to DAC(SD)
8		Trigger 1
9		-Audio		(PWM)
10		(SD)		(PWM)
11		-Audio	
12		Jack Detect
13		-Audio
14		(SD)						SCK
15			(-Volume)
16		Btn
17		Btn
18		-Audio
19		-Audio
20		Level 3			(PWM)
21					(PWM)
22		-Audio		(PWM)
23		-Audio		(PWM)
24		Trigger 0
25		Level 0 	(PWM)			Slave Select
26		Btn
27		Btn
28		Btn
29		Btn
30		Btn
31 		Trigger 2
32 		Trigger 3
33		Btn

*/

//#define SERIAL_DEBUG 1

#define CS_Pin 25

#include <Encoder.h>
#include <Adafruit_NeoPixel.h>
#include "Timer.h"
#include <Bounce.h>
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioInputI2S            i2s1;           //xy=156,138
AudioAnalyzeFFT256       fft256_1;       //xy=188,438
AudioMixer4              mixer1;         //xy=278,278
AudioAnalyzeFFT1024      fft1024_1;      //xy=408,278
AudioAnalyzeRMS          rms1;           //xy=444,111
AudioAnalyzeRMS          rms2;           //xy=452,152
AudioConnection          patchCord1(i2s1, 0, rms1, 0);
AudioConnection          patchCord2(i2s1, 0, mixer1, 0);
AudioConnection          patchCord3(i2s1, 1, rms2, 0);
AudioConnection          patchCord4(i2s1, 1, mixer1, 1);
AudioConnection          patchCord5(mixer1, fft1024_1);
AudioControlSGTL5000     sgtl5000_1;     //xy=469,58
// GUItool: end automatically generated code



const float fft_logScale = 2.;  		//Scale the logarithm curve deeper or shallower
const float fft_gain = 240.0;         	//Input gain
const float fft_shift = 1.0;          	//Shift bars down to mask background noise
int 		fft_top 	= 312;
int 		fft_bottom 	= 0;
int 		fft_band[16][2];

typedef enum {
	m_Idle = 0,
	m_Select = 1,
	m_Trigger = 2,
	m_Linearity = 3,
	m_Reactance = 4,
	m_Bias = 5,
	m_Scale = 6,
	m_Q = 7,
	m_Frequency = 8
} skState_t;

int input_level_r;
int input_level_l;

// channel settings				// normalized to bar graph height 0.-1. btm to top
float 	c_frequency[4];			// so frequency is logarithmically mapped, 0. -> 0Hz, 1. ~22khz
float 	c_q[4];
int 	c_band_lo[4];
int 	c_band_hi[4];
float 	c_scale[4];
float 	c_bias[4];
float 	c_reactance[4];
float 	c_linearity[4];
float 	c_trigger[4];


float old_level[4];
int out_level[4];
int out_trigger[4];
int energy[16];

Timer t;

Bounce 									btn1 = Bounce(30, 5); 
Bounce 									btn2 = Bounce(29, 5); 
Bounce 									btn3 = Bounce(33, 5); 
Bounce 									btn4 = Bounce(28, 5); 
Bounce 									btn5 = Bounce(27, 5); 
Bounce 									btn6 = Bounce(26, 5); 
Bounce 									btn7 = Bounce(17, 5); 
Bounce 									btn8 = Bounce(16, 5); 


unsigned char 							selected;
skState_t 								mode = m_Idle;
unsigned char 							brightness;
Encoder 								myEnc(4, 3);
Adafruit_NeoPixel 						strip = Adafruit_NeoPixel(48, 2, NEO_GRB + NEO_KHZ800);

//--------------------------------------------------------------------------------------------------
void level_meter(int level, unsigned char id) {
    for (char i = 0; i < 16; i++) {
		if ((level/64) > (i+1)) {
			strip.setPixelColor(i + (id * 16), strip.Color(brightness,brightness,brightness));
	    } else if (level/64 > i) {
     		unsigned char rem = level % 64;
      		rem *= brightness/64;
     	 	strip.setPixelColor(i + (id * 16), strip.Color(rem,rem,rem));
	    } else {
			strip.setPixelColor(i + (id * 16), strip.Color(0,0,0));
		}
	}
}
//--------------------------------------------------------------------------------------------------
void spectrum_meter() {
    for (char i = 0; i < 16; i++) {
    	unsigned char b = map(constrain(energy[i],0,32),0,32,0,64);
    	unsigned char g = map(constrain(energy[i],32,64),32,64,0,127);
		strip.setPixelColor(i, strip.Color(0,g,b));
	}
}


void scale_meter() {
    for (char i = 0; i < 16; i++) {
		strip.setPixelColor(i+16, strip.Color(0,0,0));
	}
}

void indicator(float val) {
		strip.setPixelColor((char)(16.* val) + 16, strip.Color(60,64,0));
}

//--------------------------------------------------------------------------------------------------
void change_mode(skState_t m) {
	if (m == mode) {
		mode = m_Idle;
	} else {
		mode = m;
	}
	
    for (char i = 0; i < 9; i++) {
			strip.setPixelColor(i + 39, strip.Color(0,0,0));
	}
	if (mode) strip.setPixelColor(mode + 39, strip.Color(60,65,0));
	
	switch (mode) {
		case m_Select:
			myEnc.write(selected * 4);
			break;
			
		case m_Trigger:
			myEnc.write(c_trigger[selected] * 1024);
			break;
			
		case m_Linearity:
			myEnc.write(c_linearity[selected] * 1024);
			break;
			
		case m_Reactance:
			myEnc.write(c_reactance[selected] * 1024);
			break;
			
		case m_Bias:
			myEnc.write(c_scale[selected] * 1024);
			break;
			
		case m_Scale:
			myEnc.write(c_scale[selected] * 1024);
			break;
			
		case m_Q:
			myEnc.write(c_q[selected]);
			break;
			
		case m_Frequency:
			myEnc.write(c_frequency[selected] * 1024);
			break;
			
		default:
			myEnc.write(0);
			break;
	}
}
//--------------------------------------------------------------------------------------------------
void check_Encoder() {
	static signed int old_position;
	signed int new_position = myEnc.read();
	if (new_position == old_position) return;
	
	old_position = new_position;
	switch (mode) {
		case m_Select:
			selected = new_position/4;
			selected %= 4;
			break;
			
		case m_Trigger:
			c_trigger[selected] = constrain(new_position / 1024., 0., 1.);
			break;
			
		case m_Linearity:
			c_linearity[selected] = constrain(new_position / 1024., 0., 1.);
			break;
			
		case m_Reactance:
			c_reactance[selected] = constrain(new_position / 1024., 0., 1.);
			break;
			
		case m_Bias:
			c_bias[selected] = constrain(new_position / 1024., 0., 1.);
			break;
			
		case m_Scale:
			c_scale[selected] = constrain(new_position / 1024., 0., 1.);
			break;
			
		case m_Q:
			c_q[selected] = constrain(new_position, 1, 64);
			calculate_bands_for_channel(selected);
			break;
			
		case m_Frequency:
			c_frequency[selected] = constrain(new_position / 1024., 0., 1.);
			calculate_bands_for_channel(selected);
			break;
			
		default:
			break;
	}
}

//--------------------------------------------------------------------------------------------------

void update_display(){
	static skState_t 	display_mode;
	if (mode != m_Select) display_mode = mode;
	
	switch (display_mode) {
			
		case m_Trigger:
			spectrum_meter();
			level_meter(out_level[selected],1);
			indicator(c_trigger[selected]);
			break;
			
		case m_Linearity:
			spectrum_meter();
			level_meter(out_level[selected],1);
			indicator(c_linearity[selected]);
			break;
			
		case m_Reactance:
			spectrum_meter();
			level_meter(out_level[selected],1);
			indicator(c_reactance[selected]);
			break;
			
		case m_Bias:
			spectrum_meter();
			level_meter(out_level[selected],1);
			indicator(c_bias[selected]);
			break;
			
		case m_Scale:
			spectrum_meter();
			level_meter(out_level[selected],1);
			indicator(c_scale[selected]);
			break;
			
		case m_Q:
			spectrum_meter();
			level_meter(out_level[selected],1);
			
			strip.setPixelColor((char)(16.*c_frequency[selected]) + 16, strip.Color(60,64,0));
			break;
			
		case m_Frequency:
			spectrum_meter();
			level_meter(out_level[selected],1);
			
			strip.setPixelColor((char)(16.*c_frequency[selected]) + 16, strip.Color(60,64,0));

			break;
		default:
			spectrum_meter();
			indicator(c_frequency[0]);
			indicator(c_frequency[1]);
			indicator(c_frequency[2]);
			indicator(c_frequency[3]);
	}
	signed char ch_idx = selected;
	if (mode == m_Idle) ch_idx = -1;
	for (char i = 0; i < 4; i++) {
		if (ch_idx == i)  {
			strip.setPixelColor(2*i + 32, strip.Color(out_level[i]/4,out_level[i]/4,16));
			strip.setPixelColor(2*i + 33, strip.Color(out_trigger[i],out_trigger[i],16));
		} else {
			int b = out_level[i] * brightness / 256;
			strip.setPixelColor(2*i + 32, strip.Color(b,b,b));
			b = out_trigger[i] * brightness / 256;
		 	strip.setPixelColor(2*i + 33, strip.Color(b,0,0));
		 }
	}
	cli();
	strip.show();
	sei();
}

//--------------------------------------------------------------------------------------------------
void defaults() {
	c_frequency[3] = 0.1;
	c_frequency[2] = 0.2;
	c_frequency[1] = 0.5;
	c_frequency[0] = 0.75;
	for (char i = 0; i < 4;i++) {
		c_q[i] = 16;
		c_scale[i] = 0.5;
		c_bias[i] = 0.5;
		c_reactance[i] = 0.5;
		c_linearity[i] = 0.5;
		c_trigger[i] = 0.5;
		calculate_bands_for_channel(i);
	}

}

void clear_all() {
	for (char i = 0; i < 48; i++) {
		strip.setPixelColor(i, strip.Color(0,0,0));
	}
}

void welcome() {
	for (char i = 0; i < 12; i++) {
		unsigned char n = random(32);
		strip.setPixelColor(n, strip.Color(255,255,255));
		strip.show();
		delay(15);
		strip.setPixelColor(n, strip.Color(0,0,0));
		strip.show();
		delay(20);
	}
}
//------------s--------------------------------------------------------------------------------------
void setup() {
	strip.begin();
	welcome();
#ifdef SERIAL_DEBUG
	Serial.begin(9600);
  	while (!Serial) {
    	; // wait for serial port to connect. Needed for native USB
	  }
	  Serial.println("Here we go");
  #endif

	SPI.setMOSI(7); 
	SPI.setSCK(14);
	SPI.begin(); 
	pinMode(CS_Pin,OUTPUT);		// slave select
//	pinMode(12,INPUT_PULLUP); // jack detect
	
	input_level_l = 120;
	input_level_r = 120;

	defaults();
	calculate_bands();

	sgtl5000_1.enable();
	sgtl5000_1.inputSelect(AUDIO_INPUT_MIC);

	sgtl5000_1.volume(0.5);
	AudioMemory(12);


	pinMode(16,INPUT_PULLUP);
	pinMode(17,INPUT_PULLUP);
	pinMode(26,INPUT_PULLUP);
	pinMode(27,INPUT_PULLUP);
	pinMode(28,INPUT_PULLUP);
	pinMode(29,INPUT_PULLUP);
	pinMode(30,INPUT_PULLUP);
	pinMode(33,INPUT_PULLUP);
	
	pinMode(24,OUTPUT);
	pinMode(8,OUTPUT);
	pinMode(31,OUTPUT);
	pinMode(32,OUTPUT);
/*	pinMode(5,OUTPUT);
	pinMode(6,OUTPUT);
	pinMode(20,OUTPUT);
*/
	t.every(50,update_display);
	t.every(10,check_Encoder);
//	t.every(500,check_jack);
	strip.show(); // Initialize all pixels to 'off'
	brightness = 16;

	dacOP();
	delay(100);
	dacOP();
}

void dacOP() {
	static int sendval;
	
	sendval = 0xf010;	
	digitalWrite(CS_Pin,LOW);
	SPI.transfer16(sendval);
	digitalWrite(CS_Pin,HIGH);
}



//--------------------------------------------------------------------------------------------------
void loop() {
	t.update();
	float fval;
	int i;
	int temp;
	
	btn1.update();
	btn2.update();
	btn3.update();
	btn4.update();
	btn5.update();
	btn6.update();
	btn7.update();
	btn8.update();
	if(btn1.fallingEdge()) change_mode(m_Bias);
	if(btn2.fallingEdge()) change_mode(m_Scale);
	if(btn3.fallingEdge()) change_mode(m_Reactance);
	if(btn4.fallingEdge()) change_mode(m_Trigger);
	if(btn5.fallingEdge()) change_mode(m_Linearity);
	if(btn6.fallingEdge()) change_mode(m_Select);
	if(btn7.fallingEdge()) change_mode(m_Frequency);
	if(btn8.fallingEdge()) change_mode(m_Q);

	if (rms1.available()) {
		temp = (int)(rms1.read() * 1024.);
		if (temp > input_level_r) input_level_r = temp;
		else if (input_level_r) input_level_r--;
	}
	
	if (rms2.available()) {
		temp = (int)(rms2.read() * 1024.);
		if (temp > input_level_l ) 	 input_level_l = temp;
		else if (input_level_l) input_level_l--;
	}
	
	if (fft1024_1.available()) {
		for (i = 0; i < 16; i++) {
      		//Get FFT data
      		fval = fft1024_1.read(fft_band[i][0], fft_band[i][1]);
      		fval = pow(fval, 4.);
     	 	fval = fval * fft_gain - fft_shift;
      		fval = constrain(fval,0.,255.);            //don't saturate the band
      		if (fval > energy[i]) energy[i] = fval;
      		else energy[i] -= 4;
      	}
		
		for (i = 0; i < 4; i++) {
      		fval = fft1024_1.read(c_band_lo[i],c_band_hi[i]);
      		fval = pow(fval, (4 * c_linearity[i]));
        	fval += c_bias[i]-0.5;
      		fval *= c_scale[i]*2.;
      		if ( fval < old_level[i]) fval = old_level[i] - c_reactance[i]/10;
      		old_level[i] = fval;
			if ( fval > c_trigger[i]) out_trigger[i] = 255;
			else out_trigger[i] = 0;
      		fval *= 1024;
      		fval = constrain(fval,0.,1024.);
      		out_level[i] = fval;
      		
      		int sendval = out_level[i] << 2;
      		sendval &= 1023 << 2;
      		sendval |= i << 12;
			digitalWrite(CS_Pin,LOW);
			SPI.transfer16(sendval);
			digitalWrite(CS_Pin,HIGH);
      	}
	}
	
	

	digitalWrite(24,out_trigger[0]);
	digitalWrite(8,out_trigger[1]);
	digitalWrite(31,out_trigger[2]);
	digitalWrite(32,out_trigger[3]);
	
	//delay(2);
	
}
/*
void check_jack() {
	static char oldJack 
	char jack = digitalRead(12);
	if (jack==oldJack) return;
	
	oldJack = jack;
	
	if (!jack) sgtl5000_1.inputSelect(AUDIO_INPUT_MIC);
	else sgtl5000_1.inputSelect(AUDIO_INPUT_LINEIN);


}
*/
void calculate_bands_for_channel(int chan) {
	float len = (float)fft_top - (float)fft_bottom;
	float lo = (float)fft_bottom + (float)len * pow(c_frequency[chan]-0.5/c_q[chan], fft_logScale);
	float hi = (float)fft_bottom + (float)len * pow(c_frequency[chan]+0.5/c_q[chan], fft_logScale);
	if (lo < 0.) lo = 0;
	if (hi > 511.) hi = 511.;
	c_band_lo[chan] = round(lo);		
	c_band_hi[chan] = round(hi);
#ifdef SERIAL_DEBUG
	Serial.print("Channel ");	Serial.print(chan),	Serial.print(" from ");Serial.print(c_band_lo[chan]);Serial.print(" to ");Serial.print(c_band_hi[chan]);Serial.println();
#endif
}


void calculate_bands() {
	float len = (float)fft_top - (float)fft_bottom;
	float lo,hi;
	for (int i = 0; i<16; i++) {
		lo = (float)fft_bottom + (float)len * pow((float)i/16., fft_logScale);
		hi = (float)fft_bottom + (float)len * pow((float)(i+1)/16., fft_logScale);
		fft_band[i][0] = round(lo);		
		fft_band[i][1] = round(hi);
	
#ifdef SERIAL_DEBUG
	Serial.print("Band ");	Serial.print(i),	Serial.print(" from ");Serial.print(fft_band[i][0]);Serial.print(" to ");Serial.print(fft_band[i][1]);Serial.println();
#endif
	}	
}