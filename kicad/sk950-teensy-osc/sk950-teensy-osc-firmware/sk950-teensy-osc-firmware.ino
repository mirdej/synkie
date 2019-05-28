//----------------------------------------------------------------------------------------
//
//	sk950-teensy-osc  Firmware		
//						
//		Target MCU: Teensy 3.5
//		Copyright:	2019 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------
#include <EEPROM.h>
#include <Adafruit_NeoPixel.h>
#include <Wire.h>
#include <menu.h>//menu macros and objects
#include <menuIO/u8g2Out.h>
#include <TimerOne.h>
#include <ClickEncoder.h>
#include <menuIO/clickEncoderIn.h>
#include <menuIO/keyIn.h>
#include <menuIO/chainStream.h>
#include <menuIO/serialOut.h>
#include <menuIO/serialIn.h>
#include "AS5047.h"
#include <Encoder.h>
#include <U8g2lib.h>
#include <Timer.h>
#include "logo.h"

using namespace Menu;


#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

// GUItool: begin automatically generated code
AudioSynthWaveformSine   sine2;          //xy=175.82144165039062,470.57141876220703
AudioSynthWaveform       triangle2;      //xy=177,508
AudioSynthWaveform       square1;      //xy=182,204
AudioSynthWaveform       saw1;      //xy=183,247
AudioSynthWaveformSine   sine1;          //xy=185,115.42855834960938
AudioSynthWaveform       square2;      //xy=184,545
AudioSynthWaveform       triangle1;      //xy=187,161
AudioSynthNoiseWhite     noise1;         //xy=188,309
AudioSynthNoiseWhite     noise2;         //xy=196,649
AudioSynthWaveform       saw2;      //xy=198,585
AudioMixer4              mixer2;         //xy=397,497
AudioMixer4              mixer1;         //xy=404,206
AudioMixer4              mixer11;         //xy=544,315
AudioMixer4              mixer21;         //xy=581,599
AudioOutputAnalogStereo  dacs1;          //xy=635.4285714285713,440.85714285714283
AudioConnection          patchCord1(sine2, 0, mixer2, 0);
AudioConnection          patchCord2(triangle2, 0, mixer2, 1);
AudioConnection          patchCord3(square1, 0, mixer1, 2);
AudioConnection          patchCord4(saw1, 0, mixer1, 3);
AudioConnection          patchCord5(sine1, 0, mixer1, 0);
AudioConnection          patchCord6(square2, 0, mixer2, 2);
AudioConnection          patchCord7(triangle1, 0, mixer1, 1);
AudioConnection          patchCord8(noise1, 0, mixer11, 1);
AudioConnection          patchCord9(saw2, 0, mixer2, 3);
AudioConnection          patchCord10(mixer2, 0, mixer21, 0);
AudioConnection          patchCord11(mixer1, 0, mixer11, 0);
AudioConnection          patchCord12(mixer11, 0, dacs1, 0);
AudioConnection          patchCord13(mixer21, 0, dacs1, 1);
// GUItool: end automatically generated code 


   
//-------------------------------- PINS

const int 	button_pin[]		= {28,29,30,31,24,25,26,27};
const int	cv_pin[]			= {A15,A14,A16,A17};
#define 	PIN_ENTER			9
#define 	PIN_SENSITIVITY		A18
//-------------------------------- Defines

#define MENU_TIMEOUT			3
#define INTERACTION_TIMEOUT		10

#define PRESETS_START_ADDRESS			8
#define	PRESET_COUNT_ADDRESS			0
#define MAX_PRESET_COUNT				100


#define MODE_IDLE					0
#define MODE_STORE					1

const char * cv_mode_strings[] = {		"NOT | OCT | FRQ | SNS", 
								"NOT | OCT | WAV | DET",
								"NOT | OCT | VEL | DET"
									};


#define CV_MODE_NOFS				0		// note, octave, frequency, sensitivity
#define CV_MODE_NOWD				1		// note, octave, waveform, detune
#define CV_MODE_NOVD				2		// note, octave, velocity, detune

int cv_mode;

typedef struct {
	float 	frequency;		// base frequency
	long 	detune;			// detune second oscillator in cents
	int 	amplitude;		// 0..127 velocity
	int 	waveform;		
	int		phase;			// phase of second oscillator in degrees;
} note_t;

//-------------------------------- Globals

U8G2_SSD1306_128X64_NONAME_F_HW_I2C  	u8g2(U8G2_R0);
Adafruit_NeoPixel 						pixels = Adafruit_NeoPixel(8, 5, NEO_GRB + NEO_KHZ800);
AS5047 myAS5047(10); // SS pin

Timer									t;

ClickEncoder 						clickEncoder(8,7,9,4);
ClickEncoderStream 					encStream(clickEncoder,1);

note_t 								current_scale[8];
int								selected_note;
int								played_note = 9;
int 								mode;

int 								cv_top[4];
int								cv_bottom[4];
int								cv_raw[4];
float								cv[4];

int preset_count 		= 0;
int save_slot 			= 0;
int recall_slot 		= 0;

int 	octave;
int 	detune;
int 	waveform;
int 	global_amp =127;
int	phase, old_phase;
//========================================================================================
//----------------------------------------------------------------------------------------
//																				Menus
//

//----------------------------------------------------------------------------------------
//																		Prototypes

void store_preset();
void generate_random();
void generate_random_notes();


//----------------------------------------------------------------------------------------
//																		Structure

/*
MENU(cvMenu1," Calib In 1 >",doNothing,anyEvent,noStyle,
  	OP(" Auto Fullrange",		autofullrange1,	enterEvent),
	FIELD(cv_raw[1]," Raw:","",0, 1024 ,0,0,doNothing,noEvent,noStyle),
	FIELD(cv[1]," Out:","",0, 1024 ,0,0,doNothing,noEvent,noStyle),
	FIELD(cv_bottom[1]," Low:","",0, 512 ,10,1,doNothing,noEvent,noStyle),
	FIELD(cv_top[1]," Low:","",0, 512 ,10,1,doNothing,noEvent,noStyle),
	EXIT(" <Back")
);


CHOOSE(cv_mode,chooseCVMenu,"Mode >",doNothing,noEvent,noStyle
  ,VALUE(cv_mode_strings[0],0,doNothing,noEvent)
  ,VALUE(cv_mode_strings[1],1,doNothing,noEvent)
  ,VALUE(cv_mode_strings[2],2,doNothing,noEvent)
);

MENU(cvMenu," Control Voltage >",doNothing,anyEvent,noStyle,
	SUBMENU(chooseCVMenu),
	
	EXIT(" <Back")
);

MENU(scaleMenu," Scales >",doNothing,anyEvent,noStyle,
	EXIT(" <Back")
);
*/

MENU(mainMenu," Main menu",doNothing,noEvent,wrapStyle,
	FIELD(detune," Detune","cents",0, 1200 ,100,1,doNothing,noEvent,noStyle),
	FIELD(phase," Phase","cents",0, 360 ,30, 1,doNothing,noEvent,noStyle),
	FIELD(waveform," Wave","",0, 64 ,4,1,doNothing,noEvent,noStyle),
  	OP(" Random Notes",		generate_random_notes,	enterEvent),
  	OP(" Random Freestyle",	generate_random,		enterEvent),
  	EXIT(" <Exit")
);

#define MAX_DEPTH 2

const colorDef<uint8_t> colors[] MEMMODE={
  {{0,0},{0,1,1}},//bgColor
  {{1,1},{1,0,0}},//fgColor
  {{1,1},{1,0,0}},//valColor
  {{1,1},{1,0,0}},//unitColor
  {{0,1},{0,0,1}},//cursorColor
  {{1,1},{1,0,0}},//titleColor
};

#define fontName u8g2_font_t0_13b_tf
#define fontX 7
#define fontY 13
#define offsetX 0
#define offsetY 16
#define U8_Width 128
#define U8_Height 48

MENU_INPUTS(in,&encStream);

MENU_OUTPUTS(out,MAX_DEPTH
  ,U8G2_OUT(u8g2,colors,fontX,fontY,offsetX,offsetY,{0,0,U8_Width/fontX,U8_Height/fontY})
  ,NONE
);

NAVROOT(nav,mainMenu,MAX_DEPTH,in,out);		//the navigation root object
//----------------------------------------------------------------------------------------
//																		generate presets

void generate_presets() {
	int note;
	float f = 50.;
	for (note = 0; note < 8; note++) {
		current_scale[note].frequency = f;
		current_scale[note].amplitude = 127;
		current_scale[note].detune = 700;
		current_scale[note].waveform = 32;
		f *= 2.;
	}
	
}


//----------------------------------------------------------------------------------------
//																		Handlers

void store_preset() {
	;
}

void generate_random(){
	;
}

void generate_random_notes(){	;
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																				UTILITIES

//----------------------------------------------------------------------------------------
//															move down n pixels on display
void next_line(int height) {
	static int y;
	if (height == 0) y = 0;
	else {
		y+= height;
	}
	u8g2.setCursor(0,y);  	
}



//----------------------------------------------------------------------------------------
//																	Nice and warm Welcome
void intro() {
	update_leds();
	u8g2.clearBuffer();
	u8g2.setFont(u8g2_font_7x14B_tr);
	u8g2.drawBitmap(0, 0, 16, 16,bitmap_anyma);
	u8g2.setFont(u8g2_font_fub14_tr);
	u8g2.setCursor((128 - (u8g2.getStrWidth("TEENSYOSC"))) / 2 ,40);
	u8g2.print("TEENSYOSC");
	u8g2.setCursor((128 - (u8g2.getStrWidth("SK950"))) / 2 ,64);
	u8g2.print("SK950.1");
	u8g2.sendBuffer();
	delay (1000);
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																		TIMER FUNCTIONS

//----------------------------------------------------------------------------------------
//																				cv input

void check_cv() {
	int temp;
	static int old_cv[4];
	for (int channel = 0; channel < 4; channel++) {
		temp = analogRead(cv_pin[channel]);
		temp = (3 * old_cv[channel] + temp ) / 4;
		old_cv[channel] = temp;
		if (temp > 4) {		
			temp = constrain(temp, cv_bottom[channel], cv_top[channel]);
			cv[channel] = (float)(temp -  cv_bottom[channel])/(float)cv_top[channel];
		} else cv[channel] = -1.;
	}

	switch (cv_mode)	{
		case CV_MODE_NOFS:
			if (cv[0] >= 0.) { played_note = constrain(cv[0] * 8,0,7);}
			if (cv[1] >= 0.) {;}
			if (cv[1] >= 0.) {;}
			break;
		case CV_MODE_NOWD:
			break;
		case CV_MODE_NOVD:
			break;
		default: 
			break;
	}

}


//----------------------------------------------------------------------------------------
//																				display
void update_display() { 



	float freq = current_scale[selected_note].frequency;
	u8g2.clearBuffer();
	u8g2.setFont(u8g2_font_crox3cb_mn);
	int w = u8g2.getStrWidth("0");
	int c = 4;
	if (freq >= 10) c++;
	if (freq >= 100) c++;
	if (freq >= 1000) c++;
	if (freq >= 10000) c++;
	w = c*w;
	u8g2.setCursor(126 - w  ,48);
	u8g2.print(freq);
	
	u8g2.setFont(u8g2_font_6x13_tr);
	w = u8g2.getStrWidth("0");
	c = 1;
	if (detune >= 10) c++;
	if (detune >= 100) c++;
	if (detune >= 1000) c++;
	if (detune >= 10000) c++;
	w = c*w;
	u8g2.setCursor(126 - w  , 64);
	u8g2.print(detune);
	
	u8g2.setCursor(0 , 15);
	
	u8g2.print(cv_mode_strings[cv_mode]);
	
	u8g2.sendBuffer();
}


//----------------------------------------------------------------------------------------
//																		push button
void check_buttons() {
	static int did_test;
	static int old_state[8];
	
	for (int i = 0; i < 8; i++) {
		if (digitalRead(button_pin[i]) != old_state[i]) {
			if (digitalRead(button_pin[i]) == LOW) {
				// save old settings
				current_scale[selected_note].detune = detune;
				current_scale[selected_note].waveform = waveform;
				selected_note = i;
				played_note = i;
				detune = current_scale[selected_note].detune;
				waveform = current_scale[selected_note].waveform;
				update_leds();
			}
			old_state[i] = button_pin[i];
		}
	}
	
	
	if (digitalRead(button_pin[0])==0) {
		 if (digitalRead(button_pin[7])==0) {
			if (!did_test) {
				hardware_test();
				did_test = 1;
			}
		 }
	} else did_test = 0;

}


//----------------------------------------------------------------------------------------
//																		EEPROM

void write_preset(int preset_number) {
	EEPROM.write(PRESET_COUNT_ADDRESS , preset_count);
	
	for (int note = 0; note < 8; note++) {
			EEPROM.put(PRESETS_START_ADDRESS + (preset_number * 8  * sizeof(note_t)) + (note * sizeof(note_t))  , current_scale[note]);		
	}
}

void read_preset(int preset_number) {
	preset_count = EEPROM.read(PRESET_COUNT_ADDRESS);
	
	if (preset_count > MAX_PRESET_COUNT) { preset_count = 0;}
	if (preset_number >= preset_count) preset_number = preset_count - 1;
	
	
	for (int note = 0; note < 8; note++) {
			EEPROM.get(PRESETS_START_ADDRESS + (preset_number * 8  * sizeof(note_t)) + (note * sizeof(note_t))  , current_scale[note]);		
	}
}

//----------------------------------------------------------------------------------------
//																		encoder
void check_dial() {
	static long old_val;
	float freq = 	current_scale[selected_note].frequency;
	float amplitude = 1.;
	long new_val = myAS5047.sensor_read();
	new_val /= 100;

	if (abs(old_val - new_val) > 60) {
		old_val = new_val;
		return;
	}
	
	float sens = analogRead(PIN_SENSITIVITY) / 100.;
	if (sens < 0.1) sens = 0.1;
	sens = sens * sens;
	
	freq += (float)(new_val - old_val) * sens;
	if (freq < 5.) freq = 5.;
	
	current_scale[selected_note].frequency = freq;
	current_scale[selected_note].waveform = waveform;
	calc_gains(selected_note);
	old_val = new_val;
	
	if (old_phase != phase) {
		AudioNoInterrupts();
		sine2.phase(0);
		sine1.phase(phase);		
		AudioInterrupts();
		old_phase = phase;
	}
}


void play() {
	float freq = current_scale[played_note].frequency;
	float det = current_scale[played_note].detune;
	float amplitude = global_amp / 127.;
	
	

	sine2.frequency(freq);	
	sine2.amplitude(amplitude);
	square2.frequency(freq); 
	saw2.frequency(freq); 
	triangle2.frequency(freq);
	sine2.amplitude(amplitude);
	square2.amplitude(amplitude);
	saw2.amplitude(amplitude);
	triangle2.amplitude(amplitude);
	noise2.amplitude(amplitude);  

	freq = freq * pow(2,(float)det/1200);
	
	sine1.frequency(freq);
	square1.frequency(freq); 
	saw1.frequency(freq); 
	triangle1.frequency(freq);
	sine1.amplitude(amplitude);
	square1.amplitude(amplitude);
	saw1.amplitude(amplitude);
	triangle1.amplitude(amplitude);
	noise1.amplitude(amplitude);  

}

//----------------------------------------------------------------------------------------
//																		encoder
void check_encoder() {
}

void update_leds() {
	for (int i = 0; i < 8; i++){
		if (i == played_note) { 		pixels.setPixelColor(i, pixels.Color(100,0,0)); }
		else {	pixels.setPixelColor(i, pixels.Color(0,5,5)); }
		if (i == selected_note) { 		pixels.setPixelColor(i, pixels.Color(50,50,0)); }
	}
	pixels.show();
}

void calc_gains(int note) {
	float w,g1,g2,g3,g4,g5;
	
	//if (cv[4])
	//w = (float)current_scale[note].waveform / 64.;
	w = cv[3];
	
	if (w <= 0.25) {
		g1 = (0.25 - w) * 4.;
		g2 = w * 4;
		g3 = 0.;
		g4 = 0.;
		g5 = 0;
	} else if (w <= 0.5) {
		g1 = 0;
		g2 = (0.5 - w) * 4.;
		g3 = (w - 0.25)  * 4.;
		g4 = 0.;
		g5 = 0.;
	} else if (w <= 0.75) {
		g1 = 0;
		g2 = 0;
		g3 = (0.75 - w ) * 4.;
		g4 = (w - 0.5) * 4;
		g5 = 0;
	} else {
		g1 = 0.;
		g2 = 0.;
		g3 = 0.;
		g4 = (1. - w ) * 4.;
		g5 = (w - 0.75) * 4.;
	}
	
	mixer1.gain(0,g1);
	mixer1.gain(1,g2);
	mixer1.gain(2,g3);
	mixer1.gain(3,g4);
	mixer11.gain(0,1.);
	mixer11.gain(1,g5);
	
	mixer2.gain(0,g1);
	mixer2.gain(1,g2);
	mixer2.gain(2,g3);
	mixer2.gain(3,g4);
	mixer21.gain(0,1.);
	mixer21.gain(1,g5);
}
//----------------------------------------------------------------------------------------
//																		harware test
void hardware_test() {
	long last_update = millis();
	int pix_idx;
	int stay_in_test = 1;
	int can_leave = 0;
	sine1.frequency(1000.);	
	sine1.amplitude(1.);
	sine2.frequency(800.);
	sine2.amplitude(1.);
	
	while(stay_in_test) {
	
		u8g2.clearBuffer();
		u8g2.drawFrame(0,0,128,64);
		u8g2.setFont(u8g2_font_6x13_tr);
		next_line(0);
		next_line(15);
		u8g2.print(" HARDWARE TEST");
		
		next_line(10);
		u8g2.print(" ");
		for (int i=0; i < 8; i++) {
			u8g2.print(digitalRead(button_pin[i]),DEC);
			u8g2.print(" ");
		}
		u8g2.print(". ");
		u8g2.print(digitalRead(PIN_ENTER),DEC);
		next_line(12);

		u8g2.print(" ");
		u8g2.print(analogRead(PIN_SENSITIVITY));
		u8g2.print(" ");
		u8g2.print(clickEncoder.getValue());

		next_line(12);
		u8g2.print(" ");
		for (int i=0; i < 4; i++) {
			u8g2.print(analogRead(cv_pin[i]),DEC);
			u8g2.print(" ");
		}
		next_line(12);
		u8g2.print(" ");
		u8g2.print(myAS5047.sensor_read());


		u8g2.sendBuffer();
		delay(10);

		if ((millis() - last_update) > 500) {
			last_update = millis();
			for (int i = 0; i < 8; i++){
				pixels.setPixelColor(i, pixels.Color(0,0,10)); 
			}
			pixels.setPixelColor(pix_idx, pixels.Color(100,0,0)); 
			pixels.show();
			pix_idx++;
			pix_idx %= 8;
			
			if (digitalRead(button_pin[0])==0) {
				 if (digitalRead(button_pin[7])==0) {
				 	if (can_leave) stay_in_test = 0;
				 } else can_leave = 1;
			} else can_leave = 1;
		} 
	}
	update_leds();
	u8g2.clearBuffer();
	u8g2.sendBuffer();

	sine1.amplitude(0.);
	sine2.amplitude(0.);

}

void timerIsr() {	clickEncoder.service(); }


//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
	
	pixels.begin(); 
	pixels.setBrightness(60);
	pixels.show();
	
	for (int i = 0; i < 8; i++) {
		current_scale[i].frequency = 100.;
		current_scale[i].amplitude = 127;
		current_scale[i].detune = 0	;
		current_scale[i].waveform = 0;
	}

	analogReference(INTERNAL);
	
	square1.begin(WAVEFORM_SQUARE);  
	saw1.begin(WAVEFORM_SAWTOOTH);       
	triangle1.begin(WAVEFORM_TRIANGLE); 
	square2.begin(WAVEFORM_SQUARE);  
	saw2.begin(WAVEFORM_SAWTOOTH);       
	triangle2.begin(WAVEFORM_TRIANGLE); 

	AudioMemory(24);
	
	for (int i=0; i < 8; i++) {
		pinMode(button_pin[i], INPUT_PULLUP);
	}
	pinMode(PIN_ENTER, INPUT_PULLUP);
	for (int i=0; i < 4; i++) {
		cv_bottom[i] = 4;
		cv_top[i] = 800;
	}

	nav.showTitle			=	false;
	nav.timeOut				= MENU_TIMEOUT;

	Timer1.initialize(1000);
	Timer1.attachInterrupt(timerIsr);
	delay(100);

	// init OLED display
	u8g2.begin();
	u8g2.setPowerSave(0); 

	t.every(5,check_buttons);
	t.every(5,play);
	t.every(5,check_cv);
	t.every(20,update_leds);
	t.every(20,check_dial);
	intro();
	
	generate_presets();

	preset_count = 1;
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop() {
	t.update();
	nav.doInput();
	if (nav.sleepTask) {
    	update_display();
      	if (clickEncoder.getValue()) {nav.idleOff();}
  	} else {
		if (nav.changed(0)) {
			u8g2.clearBuffer();
			u8g2.setFont(fontName);

      		u8g2.firstPage();
      		do nav.doOutput(); while(u8g2.nextPage());
    	}
  	}
}

