#include "ADV7280.h"



ADV7280::ADV7280(TwoWire *theWire) {
    _wire = theWire;
}

//----------------------------------------------------------------------------------------

void ADV7280::begin(int reset_pin, uint8_t address) {
    _address = address;
    pinMode(reset_pin,OUTPUT);
    digitalWrite(reset_pin,HIGH);
    delay(20);
    digitalWrite(reset_pin,LOW);
    delay(20);
    digitalWrite(reset_pin,HIGH);
    
    // Select input 
    write(0x00,0x00); // CVBS input on pin 1

    clear_bit(0x03, 6);     // Enable outputs

    set_bit(0x04, 1); // enable SFL-output
    set_bit(0x04, 4); // enable Timing signal output
    write(0x6b, 0x14); //VS/F/SFL Pin outputs SFL
    
//    clear_bit(0x04,0);
    clear_bit(0x1d, 7); // enable LLC output
    
    
    clear_bit(0x0F, 5);     // POWER UP
    
    
 }


//----------------------------------------------------------------------------------------

uint8_t ADV7280::read(uint8_t register_address) {
    uint8_t data;
    _wire->beginTransmission(_address);
    _wire->write(register_address);
    _wire->endTransmission(false);
    _wire->requestFrom(_address,1);                                        
    data = _wire->read(); 
    _wire->endTransmission();
    return data;
}


//----------------------------------------------------------------------------------------

void ADV7280::write(uint8_t register_address, uint8_t data) {
     _wire->beginTransmission(_address);
    _wire->write(register_address);
    _wire->write(data);
    _wire->endTransmission();

}


//----------------------------------------------------------------------------------------

void ADV7280::set_bit(uint8_t register_address, uint8_t bit) {
    uint8_t reg = read(register_address);
    bit %= 8;
    reg |= (1 << bit);
    write(register_address, reg);
}


//----------------------------------------------------------------------------------------

void ADV7280::clear_bit(uint8_t register_address, uint8_t bit) {
    uint8_t reg = read(register_address);
    bit %= 8;
    reg &= ~(1 << bit);
    write(register_address, reg);
}

//----------------------------------------------------------------------------------------

void ADV7280::register_dump(int count) {

    Serial.println(F("-----------------------"));
    Serial.println(F("ADV7280 Register Dump:"));
    Serial.println();
    
    _wire->beginTransmission(_address);
    _wire->write(0x00);
    _wire->endTransmission(false);
    
    _wire->requestFrom(_address,count);   
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

void ADV7280::print_status(void) {
    uint8_t data;
    static uint8_t last_1, last_2, last_3;
    
    data = read(ADV7280_REG_STATUS_1);
    if (data != last_1) {
        last_1 = data;

        if (data & (1 << 0)) Serial.println("IN_LOCK");
        if (data & (1 << 1)) Serial.println("LOST_LOCK");
        if (data & (1 << 2)) Serial.println("FSC_LOCK");
        if (data & (1 << 3)) Serial.println("FOLLOW_PW");
        if (data & (1 << 7)) Serial.println("COL_KILL");

        data = (data & 0x70) >> 4;
        if (data == 0)    Serial.println("NTSC M/NTSC J");
        if (data == 1)    Serial.println("NTSC 4.43");
        if (data == 2)    Serial.println("PALM");
        if (data == 3)    Serial.println("PAL60");
        if (data == 4)    Serial.println("PAL B/PAL G/PAL H/PAL I/PAL D");
        if (data == 5)    Serial.println("SECAM");
        if (data == 6)    Serial.println("PAL Combination N");
        if (data == 7)    Serial.println("SECAM 525");
    }

      

    data = read(ADV7280_REG_STATUS_2);
    if (data != last_2) {
        last_2 = data;
        if (data & (1 << 0)) Serial.println("MVCS DET");
        if (data & (1 << 1)) Serial.println("MVCS T3");
        if (data & (1 << 2)) Serial.println("MV PS DET");
        if (data & (1 << 3)) Serial.println("MV AGC DET");
        if (data & (1 << 4)) Serial.println("Line length nonstandard");
        if (data & (1 << 5)) Serial.println("FSC Frequecy nonstandard");
    }
    
    
    data = read(ADV7280_REG_STATUS_3);
    if (data != last_3) {
        last_3 = data;
        if (data & (1 << 0)) Serial.println("H-Lock (instant)");
        if (data & (1 << 2)) Serial.println("50 Hz");
        if (data & (1 << 4)) Serial.println("Free Run Active");
        if (data & (1 << 5)) Serial.println("Field length is correct");
        if (data & (1 << 6)) Serial.println("Interlaced video detected");
        if (data & (1 << 7)) Serial.println("PAL_SW_LOCK");
    }
}



