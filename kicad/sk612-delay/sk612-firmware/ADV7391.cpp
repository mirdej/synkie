#include "ADV7391.h"



ADV7391::ADV7391(TwoWire *theWire) {
    _wire = theWire;
}

//----------------------------------------------------------------------------------------

void ADV7391::begin(int reset_pin) {
    pinMode(reset_pin,OUTPUT);
    digitalWrite(reset_pin,HIGH);
    delay(20);
    digitalWrite(reset_pin,LOW);
    delay(20);
    digitalWrite(reset_pin,HIGH);
    delay(20);
    
    // from table82 in datasheet
    
    write(0x00, 0x10); // DAC1 on PLL on, Sleep mode off
    write(0x01, 0x00); // SD Mode
 //   write(0x80, 0x05); // PALB, LPF PAL
    write(0x80, 0x11); //PAL standard. SSAF luma filter , 1.3 MHz chroma filter enabled.
    write(0x82, 0xC3); //Pixel data valid. CVBS/Y-C (S-Video) out. SSAF PrPb filter enabled. Active video edge control enabled.
    
    // Set subcarrier frequency for PAL:
    write(0x8c , 0xcb);
    write(0x8d , 0x8a);
    write(0x8e , 0x09);
    write(0x8f , 0x2a);
    
    write(0x0b, 0x3F); // more dac gain
 }


//----------------------------------------------------------------------------------------

uint8_t ADV7391::read(uint8_t register_address) {
    uint8_t data;
    _wire->beginTransmission(ADV7391_I2C_ADDRESS);
    _wire->write(register_address);
    _wire->endTransmission(false);
    _wire->requestFrom(ADV7391_I2C_ADDRESS,1);                                        
    data = _wire->read(); 
    _wire->endTransmission();
    return data;
}


//----------------------------------------------------------------------------------------

void ADV7391::write(uint8_t register_address, uint8_t data) {
     _wire->beginTransmission(ADV7391_I2C_ADDRESS);
    _wire->write(register_address);
    _wire->write(data);
    _wire->endTransmission();

}


//----------------------------------------------------------------------------------------

void ADV7391::set_bit(uint8_t register_address, uint8_t bit) {
    uint8_t reg = read(register_address);
    bit %= 8;
    reg |= (1 << bit);
    write(register_address, reg);
}


//----------------------------------------------------------------------------------------

void ADV7391::clear_bit(uint8_t register_address, uint8_t bit) {
    uint8_t reg = read(register_address);
    bit %= 8;
    reg &= ~(1 << bit);
    write(register_address, reg);
}

//----------------------------------------------------------------------------------------

void ADV7391::register_dump(int count) {

    Serial.println(F("-----------------------"));
    Serial.println(F("ADV7391 Register Dump:"));
    Serial.println();
    
    _wire->beginTransmission(ADV7391_I2C_ADDRESS);
    _wire->write(0x00);
    _wire->endTransmission(false);
    
    _wire->requestFrom(ADV7391_I2C_ADDRESS,count);   
    int i = 0;                                     
    while(_wire->available()) {
        Serial.print("Reg ");
        Serial.print(i,HEX);
        Serial.print(" : ");
        Serial.println(_wire->read(),HEX); 
        i++;
    }
    _wire->endTransmission();
}




//----------------------------------------------------------------------------------------

void ADV7391::enable_sync_out(bool enable){
    if (enable) set_bit(0x02, 6);
    else clear_bit(0x02,6);
}

//----------------------------------------------------------------------------------------

uint8_t ADV7391::read_pixelport(){
    return read(0x13);
}

//----------------------------------------------------------------------------------------

uint8_t ADV7391::read_controlport(){
    return read(0x16);
}

//----------------------------------------------------------------------------------------

void ADV7391::color_bars(bool enable){
    if (enable) set_bit(0x84, 6);
    else clear_bit(0x84,6);
}

//----------------------------------------------------------------------------------------
void ADV7391::hue(uint8_t h) {
    set_bit(0x87, 2); // enable hue adjust
    write(0xA0,h);
}

//----------------------------------------------------------------------------------------

void ADV7391::enable_gamma(bool enable){
    if (enable) set_bit(0x88, 6);
    else clear_bit(0x88,6);
}

//----------------------------------------------------------------------------------------

void ADV7391::gamma(uint8_t i, uint8_t g){
    i %= 10;
    write(0xA6 + i, g);
}