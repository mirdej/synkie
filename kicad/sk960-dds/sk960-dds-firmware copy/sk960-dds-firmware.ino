//----------------------------------------------------------------------------------------
//
//	sk960-dds  Firmware		
//						
//		Target MCU: Arduino Micro
//		Copyright:	2019 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------
#include <Timer.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <ClickEncoder.h>
#include <EEPROM.h>

#define HARDWARE_TEST 0

#define EEPROM_FREQ_ADDRESS 12

const int FSYNC = 4;
const int SDATA = 9;
const int SCLK = 8;
int wave = 0x2000;


#define SCREEN_WIDTH 128 
#define SCREEN_HEIGHT 32 

#define OLED_RESET		 -1
Adafruit_SSD1306 		display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
Timer t;

ClickEncoder *encoder;
int speed = 1;
int phase = 0;

long frequency; 



//----------------------------------------------------------------------------------------
void writeEeprom() {
	static long written;
	if (written != frequency) {
		EEPROM.put(EEPROM_FREQ_ADDRESS, frequency);
		written = frequency;
	}
}


//----------------------------------------------------------------------------------------

void displayFrequency() {
	
	display.clearDisplay();
	display.setCursor(0,0);             // Start at top-left corner
	display.setTextSize(2);
	if (frequency < 10000000)		display.print(F(" "));
	if (frequency < 1000000)		display.print(F("  "));
	if (frequency < 100000)			display.print(F(" "));
	if (frequency < 10000)			display.print(F(" "));
	if (frequency < 1000)			display.print(F("  "));
	if (frequency < 100)			display.print(F(" "));
	if (frequency < 10)				display.print(F(" "));
	
	if (frequency >= 1000000) {
		unsigned int millions = frequency / 1000000;
		unsigned long rest = frequency % 1000000;
		unsigned int thousands = rest / 1000;
		unsigned int ones = rest % 1000;
		display.print(millions); 
		display.print("."); 
		if (thousands < 100) 		display.print("0"); 
		if (thousands < 10) 		display.print("0"); 
		display.print(thousands); 
		display.print("."); 
		if (ones < 100) 			display.print("0"); 
		if (ones < 10) 				display.print("0"); 
		display.print(ones); 
	} else if (frequency >= 1000) {
		unsigned int thousands = frequency / 1000;
		unsigned int ones = frequency % 1000;
		display.print(thousands); 
		display.print("."); 
		if (ones < 100) 			display.print("0"); 
		if (ones < 10) 				display.print("0"); 
		display.print(ones); 
	} else {
		display.print(frequency); 
	}
	display.display();
//	Serial.println(frequency);

}
//----------------------------------------------------------------------------------------

void checkPots() {
	phase = analogRead(A1);
	speed = map(analogRead(A0),0,1024,1,8);


	int enc = encoder->getValue();
	
	if (enc == 0) return;
	
	frequency += enc * (pow(10,speed)/10);
	if (frequency < 1) frequency = 1;
	if (frequency > 12500000) frequency = 12500000;
	displayFrequency();
	updateFrequency();
}


//----------------------------------------------------------------------------------------

void hardwaretest() {
	static int value;
	int a = analogRead(A0);
	int b = analogRead(A1);
	display.clearDisplay();
	display.setCursor(0,0);             // Start at top-left corner
	display.print(a); 
	display.print(" "); 
	display.println(b); 
	display.print(" "); 
	display.print(digitalRead(10)); 
	display.print(" "); 
	display.print(value); 
	  value += encoder->getValue();

	display.display();
	Serial.println(F("check"));
}

//----------------------------------------------------------------------------------------

void updateFrequency(){
// Die Frequenz Register schreiben.
long FreqReg;
unsigned int MSB, LSB;

 FreqReg = (frequency * pow(2, 28)) / 25000000; // 25MHz Quarz
 if (wave == 0x2020) FreqReg = FreqReg << 1;  // Rechteck 1/2 Frequenz
 MSB = (int)((FreqReg & 0xFFFC000) >> 14);
 LSB = (int)(FreqReg & 0x3FFF);
 LSB |= 0x4000;
 MSB |= 0x4000;
 UpdateRegister(0x2100); // Control Register, Reset Bit DB8 gesetzt
 UpdateRegister(LSB);    // Frequency Register 0 LSB
 UpdateRegister(MSB);    // Frequency Register 0 MSB
 UpdateRegister(0xC000); // Phase Register
 UpdateRegister(wave);   // Exit Reset : Wellenform nach dem Reset
}

void UpdateRegister(unsigned int data){
// Ein DDS Register schreiben
unsigned int pointer = 0x8000;

 digitalWrite(FSYNC, LOW);
 for (int i=0; i<16; i++){
   if ((data & pointer) > 0) { 
     digitalWrite(SDATA, HIGH); 
   }
   else { 
     digitalWrite(SDATA, LOW); 
   }
   digitalWrite(SCLK, LOW);
   digitalWrite(SCLK, HIGH);
   pointer = pointer >> 1 ;
 }
 digitalWrite(FSYNC, HIGH);
}

ISR(TIMER1_OVF_vect){
  encoder->service();
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup() {
  	Serial.begin(9600);
  	if(!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) {
		Serial.println(F("SSD1306 allocation failed"));
		for(;;); 
	}
	  encoder = new ClickEncoder(6, 7, 10);

	pinMode(10,INPUT_PULLUP);
	
	pinMode(FSYNC, OUTPUT);
	pinMode(SDATA, OUTPUT);
 	pinMode(SCLK, OUTPUT);
	digitalWrite(FSYNC, HIGH);
	digitalWrite(SDATA, LOW);
	digitalWrite(SCLK, HIGH);

	display.clearDisplay();
	display.setTextSize(2);				
	display.setTextColor(WHITE);
	display.println(F("SK960")); 
	display.println(F("DDS-OSZI")); 
	display.display();
	delay(200);

	TIMSK1 = (TIMSK1 & B11111110) | 0x01;

	
	EEPROM.get(EEPROM_FREQ_ADDRESS,frequency);

	#if HARDWARE_TEST 
		t.every(100,hardwaretest);
	#else
		t.every(30,checkPots);
		t.every(60000,writeEeprom);
		t.every(1000,updateFrequency);
	#endif
	

	displayFrequency();
	updateFrequency();
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop() {
	t.update();
}



