/*!
 *
 *  @file ADV7391.h
 *
 *  This is a library for the Analog Devices ADV7391 Video Encoder
 *
 *  Written by Michael Egger, [ a n y m a ].
 *
 *  MIT license, all text above must be included in any redistribution
 */

#ifndef _ADV7391_ 
#define _ADV7391_

/*

The datasheet speaks of two different addresses for read and write operations
a scan of the i2c bus reveals these are completely wrong... old revision of the document ????

#define ADV7391_I2C_ADDRESS_WRITE   0x54
#define ADV7391_I2C_ADDRESS_READ    0x55

*/

#define ADV7391_I2C_ADDRESS 0x2A

#include "Arduino.h"
#include "Wire.h"

class ADV7391{
    public:
        ADV7391(TwoWire *theWire = &Wire);
        void        begin(int reset_pin);
        void        register_dump(int count = 241);
        uint8_t     read(uint8_t register_address);
        void        write(uint8_t register_address, uint8_t data);
        void        enable_sync_out(bool enable = true);
        uint8_t     read_pixelport();
        uint8_t     read_controlport();
        void        color_bars(bool enable=true);
        void        hue(uint8_t h);
        void        enable_gamma(bool enable = true);
        void        gamma(uint8_t i, uint8_t g);
        
    private:
        TwoWire * _wire;
        void        set_bit(uint8_t register_address, uint8_t bit);
        void        clear_bit(uint8_t register_address, uint8_t bit);

};


#endif

