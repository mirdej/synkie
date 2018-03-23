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
#include <SoftwareSerial.h>
#include <MIDI.h>

MIDI_CREATE_DEFAULT_INSTANCE();

// We will use the SoftwareSerial library instead of the Serial library, as this will let us control which pins our MIDI interface is connected to.
SoftwareSerial mySerial(2, 3); // RX, TX



int potis[16];
int values[16];

//---------------------------------------------------------------------------------------------
//																					SETUP
//---------------------------------------------------------------------------------------------
void setup() {
	DDRC = 0x0F;		// PC0..3 are address inputs for potentiometer mux
	pinMode(7,OUTPUT);	// Slave selct pins
	pinMode(8,OUTPUT);
	pinMode(9,OUTPUT);
	pinMode(10,OUTPUT);
	
	pinMode(4,OUTPUT);	// debug output
	
	attachInterrupt(digitalPinToInterrupt(3), vertical_blanking, CHANGE);
	
	SPI.begin(); 
	power_on_dacs();

	MIDI.setHandleControlChange(controller); 
	MIDI.begin(MIDI_CHANNEL_OMNI);
	
}

//---------------------------------------------------------------------------------------------
//																					LOOP
//---------------------------------------------------------------------------------------------

void loop() {
	static int pot_idx;

	//continuosly read local potentiometers
	PORTC = (PORTC & 0xF0) | (pot_idx & 0x0F);
	potis[pot_idx] = analogRead(A6);
	pot_idx++;
	pot_idx %= 16;

    MIDI.read();
	
}

//---------------------------------------------------------------------------------------------
//																				MIDI
void controller(byte channel, byte number, byte value)
{
	if (number > 16) return;
	if (number == 0) number = 1;
	number--;
	
	values[number] = value << 3;
}

//---------------------------------------------------------------------------------------------
//																				INTERRUPT
void vertical_blanking() {
	int sendval;
	int cs_pin, i,n;
	
	digitalWrite(4,HIGH);					// debug out for measuring time this all takes
	
	for (cs_pin=7; cs_pin < 11 ; cs_pin++); {
	
		for (i = 0; i < 4; i++) 	{
			digitalWrite(cs_pin,LOW);
			n =  (cs_pin - 7) * 4 + i;
			
			sendval = values[n] << 2;
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
	
	for (cs_pin=7; cs_pin < 11 ; cs_pin++); {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	}
	delay(100);
	
	for (cs_pin=7; cs_pin < 11 ; cs_pin++); {
		digitalWrite(cs_pin,LOW);
		delay(1);
		SPI.transfer16(sendval);
		digitalWrite(cs_pin,HIGH);
	}
}
