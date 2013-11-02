#---------------------------------------------------------------------------------------------
#--	VIDEO DELAY - Makefile
#--
#-- Part of the Synkie Project: www.synkie.net
#--
#-- © 2013 Michael Egger, Licensed under GNU GPLv3
#--
#--------------------------------------------------------------------------------------------


#------------------------- ATMEGA 88, internal 8mhz rc / div 8
DEVICE     		= atmega88
F_CPU			= 1000000

PROGRAMMER 	= -c usbasp -P usb
AVRDUDE 	= avrdude $(PROGRAMMER) -p $(DEVICE)
# Choose your favorite programmer and interface above.
FUSEOPT = -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xf9:m



COMPILE = avr-gcc -Wall -Os -I.  -mmcu=$(DEVICE) -DF_CPU=$(F_CPU)#-DDEBUG_LEVEL=2
# NEVER compile the final product with debugging! Any debug output will
# distort timing so that the specs can't be met.

OBJECTS = build/main.o


# symbolic targets:
all:	build/main.hex


build: 
	mkdir build


build/%.o: %.c build
	$(COMPILE) -c $< -o $@

flash:	all
	$(AVRDUDE)  -U flash:w:build/main.hex:i

clean:
	rm -rf build

# file targets:
build/main.bin:	$(OBJECTS)
	$(COMPILE) -o $@ $(OBJECTS)

build/main.hex:	build/main.bin
	rm -f $@ build/main.eep.hex
	avr-objcopy -j .text -j .data -O ihex $< $@
	avr-size $@
disasm:	main.bin
	avr-objdump -d main.bin

cpp:
	$(COMPILE) -E main.c

fuse:
	$(AVRDUDE) $(FUSEOPT)
