//------------------------------------------------------------------------------------------
//
// 	SK166 4 x 4 Matrix Mixer							atmega 88 @ 20 MHz
//
//
//
// 	Part of the Synkie Project: www.synkie.net
//
// 	© 2018 Michael Egger, Licensed under GNU GPLv3
//
// 	needs MiniCore boards definition for atmega88 arduino support
//  https://mcudude.github.io/MiniCore/package_MCUdude_MiniCore_index.json
//  upload sketch with cmd-shift-U
//
//--------------------------------------------------------------------------------------------

#include <SPI.h>

int potis[17];
int test;

// in:	 	X Y Z E	  ->  U V W T
// out: 	T U V W   ->  X Y Z E

/*
											TX TY TZ TE
											UX UY UZ UE
											VX VY VZ VE
											WX WY WZ WE
											
*/
/*
const unsigned char  pot_lut[4][4] = {	{ 16, 16, 16, 16  },
										{  2,  6, 10, 16  },
										{  1,  5,  9, 16  },
										{  0,  4,  8, 16  }
									};
*/

const unsigned char  pot_lut[4][4] = {	{ 16, 16, 16, 16  },
										{ 16, 10,  6,  2  },
										{ 16,  9,  5,  1  },
										{ 16,  8,  4,  0  }
									};



//---------------------------------------------------------------------------------------------
//																					SETUP
//---------------------------------------------------------------------------------------------
void setup() {
	DDRC = 0x0F;		// PC0..3 are address inputs for potentiometer mux
	int cs_pin;
	
	for ( cs_pin = 7; cs_pin < 11 ; cs_pin++) {
		pinMode(cs_pin,OUTPUT);	// Slave selct pins
		digitalWrite(cs_pin, HIGH);
	}
	
	pinMode(4,OUTPUT);	// debug output
	
	attachInterrupt(digitalPinToInterrupt(3), vertical_blanking, CHANGE);
	digitalWrite(3,LOW);

	
	
	SPI.begin(); 
	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));
	
	for(int i = 0; i < 17; i++) {potis[i] = 0; }
	delay(1000);
	power_on_dacs();
	
}

//---------------------------------------------------------------------------------------------
//																					LOOP
//---------------------------------------------------------------------------------------------

void loop() {
	static int pot_idx;

		//continuosly read local potentiometers

	potis[pot_idx] = analogRead(A6);
	pot_idx++;
	
	pot_idx %= 16;
	
	PORTC = (PORTC & 0xF0) | (pot_idx & 0x0F);		// select next mux channel
}


//---------------------------------------------------------------------------------------------
//																				INTERRUPT
void vertical_blanking() {
	
	int sendval;
	int cs_pin, i,n;
	
	digitalWrite(4,HIGH);					// debug out for measuring time this all takes

	for (cs_pin=7; cs_pin < 11 ; cs_pin++) {
	
		for (i = 0; i < 4; i++) 	{
			digitalWrite(cs_pin,LOW);
			n =  pot_lut[cs_pin - 7][i];
			
//			sendval = (cs_pin == 9)	* 0xffc;
			sendval = potis[n] << 2;
      		sendval &= 1023 << 2;
      		sendval |= i << 12;

			SPI.transfer16(sendval);
			digitalWrite(cs_pin,HIGH);
		}
	}
	digitalWrite(4,LOW);					// debug out for measuring time this all takes
}


//---------------------------------------------------------------------------------------------
void power_on_dacs() {
	static int sendval;
	int cs_pin;
	
	sendval = 0xf010;	
	
	for (cs_pin=7; cs_pin < 11 ; cs_pin++) {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	} 
	delay(100);
	
	for (cs_pin=7; cs_pin < 11 ; cs_pin++) {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	}
}
