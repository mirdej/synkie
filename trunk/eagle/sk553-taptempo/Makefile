#============================================================
# Name: gnusb Makefile
# www.anyma.ch
#============================================================
# Edit the following lines to reflect your paths
#============================================================
DEVICE     = atmega16
PROGRAMMER = -c usbasp -P usb
AVRDUDE = avrdude $(PROGRAMMER) -p $(DEVICE)
# Choose your favorite programmer and interface above.


COMPILE = avr-gcc -Wall --std=c99 -Os -I. -mmcu=$(DEVICE) #-DDEBUG_LEVEL=2
# NEVER compile the final product with debugging! Any debug output will
# distort timing so that the specs can't be met.

OBJECTS = build/main.o


# symbolic targets:
all:	build/main.hex

flash:	all
	$(AVRDUDE) -U flash:w:build/main.hex:i

clean:
	rm -rf build

build: 
	mkdir build


build/%.o: %.c build
	$(COMPILE) -c $< -o $@


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
