CC=avr-gcc
OBJCOPY=avr-objcopy
OBJDUMP=avr-objdump

OBJS=main.o

all: firmware.hex size

.c.o:
	${CC} -mmcu=atmega328p -Wall -g -Wextra -Wno-pointer-sign -funsigned-char -Os -o $@ -c $<

firmware.elf: ${OBJS}
	${CC} -mmcu=atmega328p -o firmware.elf ${OBJS}

firmware.hex: firmware.elf
	${OBJCOPY} -j .text -j .data -O ihex firmware.elf firmware.hex
	${OBJDUMP} -d firmware.elf > firmware.s

size:
	@avr-size --mcu=atmega328p firmware.elf -C
	@echo "Listing instruction length of state-related functions: (Must not exceed 35)"
	@echo
	@awk 'BEGIN{RS="\n\n"} $$2 ~ /<do_state/{n=$$2;f=FS;FS="\n"; $$0=$$0; print n NF;FS=f;$$0=$$0;}' firmware.s

burn:
	avrdude -p m328p -c usbasp -U flash:w:firmware.hex:i

clean:
	rm -f *.o *.hex *.elf *.s

.PHONY: size

# make clean && make && make burn && ./setup-serial.sh && echo -n x | nc -vv localhost 1147 > /tmp/out.snigel
# watch -n 0.5 "hexdump -C /tmp/out.snigel | tail -n 30"
