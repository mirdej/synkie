/*!
 *
 *  @file ADV7280.h
 *
 *  This is a rudimentary library for the Analog Devices ADV7280 Video ADC
 *
 *  Written by Michael Egger, [ a n y m a ].
 *
 *  MIT license, all text above must be included in any redistribution
 */

#ifndef _ADV7280_ 
#define _ADV7280_

#define ADV7280_REG_STATUS_1 0x10
#define ADV7280_REG_STATUS_2 0x12
#define ADV7280_REG_STATUS_3 0x13


/*

The datasheet speaks of two different addresses for read and write operations
a scan of the i2c bus reveals these are completely wrong... old revision of the document ????

#define ADV7280_I2C_ADDRESS_WRITE   0x54
#define ADV7280_I2C_ADDRESS_READ    0x55

*/

#define ADV7280_I2C_ADDRESS 0x20

#include "Arduino.h"
#include "Wire.h"

class ADV7280{
    public:
        ADV7280(TwoWire *theWire = &Wire);
        void        begin(int reset_pin, uint8_t address = ADV7280_I2C_ADDRESS);
        void        register_dump(int count = 241);
        void        print_status(void);
        uint8_t     read(uint8_t register_address);
        void        write(uint8_t register_address, uint8_t data);
        
    private:
        TwoWire *   _wire;
        uint8_t     _address;
        void        set_bit(uint8_t register_address, uint8_t bit);
        void        clear_bit(uint8_t register_address, uint8_t bit);

};


#endif

