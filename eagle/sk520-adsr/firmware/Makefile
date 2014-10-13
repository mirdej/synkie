DEVICE     = atmega88
F_CPU		= 8000000


PROGRAMMER 	= -c usbasp -P usb
AVRDUDE 	= avrdude $(PROGRAMMER) -p $(DEVICE) -e
FUSEOPT = -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m  #-U efuse:w:0xf9:m


# Choose your favorite programmer and interface above.


COMPILE = avr-gcc -Wall --std=c99 -Os -I.  -mmcu=$(DEVICE) -DF_CPU=$(F_CPU)#-DDEBUG_LEVEL=2
# NEVER compile the final product with debugging! Any debug output will
# distort timing so that the specs can't be met.

OBJECTS = build/atm88lib.o build/main.o


# symbolic targets:
all:	build/main.hex


#===============================================================
# generic make file to be included by the project's own makefile

build: 
	mkdir build


build/%.o: %.c build
	$(COMPILE) -c $< -o $@

flash:	all
	$(AVRDUDE) -D -U flash:w:build/main.hex:i

clean:
	rm -rf build

# file targets:
build/main.bin:	$(OBJECTS)
	$(COMPILE) -o $@ $(OBJECTS)

build/main.hex:	build/main.bin
	rm -f $@ build/main.eep.hex
	avr-objcopy -j .text -j .data -O ihex $< $@
	avr-size $@
disasm:	build/main.bin
	avr-objdump -d build/main.bin

cpp:
	$(COMPILE) -E main.c
fuse:
	$(AVRDUDE) $(FUSEOPT)
