;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.6.0 #16555 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"test.c"
	list	p=16f690
	radix dec
	include "p16f690.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_CRC16
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_rawbuffer
	global	_BYTENUM
	global	_DATAADDR
	global	_CRCSUM

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_test_0	udata
_CRCSUM	res	4

UD_test_1	udata
_DATAADDR	res	1

UD_test_2	udata
_BYTENUM	res	1

UD_test_3	udata
_rawbuffer	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_test	code
;***
;  pBlock Stats: dbName = M
;***
;has an exit
;functions called:
;   _CRC16
;   _CRC16
;; Starting pCode block
S_test__main	code
_main:
; 2 exit points
;	.line	13; "test.c"	ptr[0] = 'C';
	MOVLW	0x40
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x43
	MOVWF	INDF
;	.line	14; "test.c"	ptr[1] = 'I';
	MOVLW	0x41
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x49
	MOVWF	INDF
;	.line	15; "test.c"	ptr[2] = 'P';
	MOVLW	0x42
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x50
	MOVWF	INDF
;	.line	16; "test.c"	ptr[3] = 'o';
	MOVLW	0x43
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x6f
	MOVWF	INDF
;	.line	17; "test.c"	ptr[4] = 'l';
	MOVLW	0x44
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x6c
	MOVWF	INDF
;	.line	18; "test.c"	ptr[5] = 'l';
	MOVLW	0x45
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x6c
	MOVWF	INDF
;	.line	19; "test.c"	ptr[6] = 'e';
	MOVLW	0x46
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x65
	MOVWF	INDF
;	.line	20; "test.c"	ptr[7] = 'h';
	MOVLW	0x47
	MOVWF	FSR
	BCF	STATUS,7
	MOVLW	0x68
	MOVWF	INDF
;	.line	22; "test.c"	DATAADDR = (uint8_t)ptr;
	MOVLW	0x40
	BANKSEL	_DATAADDR
	MOVWF	_DATAADDR
;	.line	24; "test.c"	BYTENUM = 7;
	MOVLW	0x07
	BANKSEL	_BYTENUM
	MOVWF	_BYTENUM
;	.line	26; "test.c"	CRC16();
	PAGESEL	_CRC16
	CALL	_CRC16
	PAGESEL	$
_00106_DS_:
;	.line	28; "test.c"	while(1);
	GOTO	_00106_DS_
;	.line	29; "test.c"	}
	RETURN	
; exit point of _main


;	code size estimation:
;	   47+    4 =    51 instructions (  110 byte)

	end
