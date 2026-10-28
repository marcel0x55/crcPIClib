#include <stdint.h>

volatile uint16_t CRCSUM[2];
uint8_t DATAADDR;
uint8_t BYTENUM;

uint8_t rawbuffer;

extern void CRC16(void);

void main(void) {
	uint8_t __data *ptr = (uint8_t __data *)0x40;
	ptr[0] = 'C';
	ptr[1] = 'I';
	ptr[2] = 'P';
	ptr[3] = 'o';
	ptr[4] = 'l';
	ptr[5] = 'l';
	ptr[6] = 'e';
	ptr[7] = 'h';

	DATAADDR = (uint8_t)ptr;

	BYTENUM = 7;

    	CRC16();
    
    	while(1);
}
