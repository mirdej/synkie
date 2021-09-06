//----------------------------------------------------------------------------------------
//
//	sk561  Firmware		
//						
//		Target MCU: ATMEGA88
//		Copyright:	2021 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

#include <SPI.h>
#include "Wire.h"
#define VEML3328_I2C_ADDRESS 0x10
#define CODE_CLEAR  0x04
#define CODE_RED     0x05
#define CODE_GREEN   0x06
#define CODE_BLUE    0x07
#define CODE_IR      0x08

#define PIN_DAC_CS             10


const int ad_pin[4] = {14,16,15,17};
const int veml_code[4]  = {CODE_RED,CODE_GREEN,CODE_BLUE,CODE_IR};

int                 dac_value[4];
int                ad_value[4];
int                 ad_idx;

//---------------------------------------------------------------------------------------------
void power_on_dac() {
	static int sendval;
	int cs_pin;
	SPI.beginTransaction(SPISettings(1000000, MSBFIRST, SPI_MODE2));

	sendval = 0xf010;	
	
    digitalWrite(PIN_DAC_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC_CS,HIGH);

	delay(100);
	
    digitalWrite(PIN_DAC_CS,LOW);
    delay(1);
    SPI.transfer16(sendval);
    digitalWrite(PIN_DAC_CS,HIGH);

	SPI.endTransaction();
}

//---------------------------------------------------------------------------------------------

void dac_send(int channel, int send_val) {

    digitalWrite(PIN_DAC_CS,LOW);
    send_val = send_val << 2;
    send_val &= 1023 << 2;
    send_val |= channel << 12;
    SPI.transfer16(send_val);
    digitalWrite(PIN_DAC_CS,HIGH);
}

//---------------------------------------------------------------------------------------------

void scan(){  
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


void power_on_veml(){
    Wire.beginTransmission(VEML3328_I2C_ADDRESS);  
    Wire.write(0x00); 
    
    uint16_t command_code;
    
   // command_code = (1 << 11) | (1 << 10);
     command_code = (1 << 11);
     
    Wire.write(command_code & 0xFF); 
    Wire.write((command_code >> 8) & 0xFF);
    Wire.endTransmission(); 
}



int read_veml(byte code) {
    int data;
  Wire.beginTransmission(VEML3328_I2C_ADDRESS);
  Wire.write(code);
  Wire.endTransmission(false);
  Wire.requestFrom(VEML3328_I2C_ADDRESS,2);
  while(Wire.available()) 
  {
    data = Wire.read(); 
//    data |= Wire.read_veml() << 8;
  }
   // Serial.println(data);
   return data;
}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP


void setup() {
    Serial.begin(115200);
    Serial.println("Hello");
    
    pinMode(PIN_DAC_CS,OUTPUT);
    SPI.begin();
	power_on_dac();

    Wire.begin();
    scan();
    power_on_veml();
}


//========================================================================================
//----------------------------------------------------------------------------------------
//																				LOOP


void loop() {
    long loop_start = millis();
    ad_idx++;
    ad_idx %= 4;

    ad_value[ad_idx] = 1023-analogRead(ad_pin[ad_idx]);
    dac_value[ad_idx] = read_veml( veml_code[ad_idx]);
    dac_value[ad_idx] = constrain(dac_value[ad_idx]  , ad_value[0], ad_value[1]);
    dac_value[ad_idx] = map(dac_value[ad_idx]   , ad_value[0], ad_value[1], ad_value[2], ad_value[3]);
    dac_send(ad_idx, dac_value[ad_idx]);

    Serial.printf("%d %d %d %d\n",  dac_value[0],dac_value[1],dac_value[2],dac_value[3]);
    //Serial.printf("%d %d %d %d\n",  ad_value[0], ad_value[1], ad_value[2], ad_value[3]);
//delay(10);
    
   // Serial.println(millis()-loop_start);
}