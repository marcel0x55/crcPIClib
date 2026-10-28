# crcPIClib
A CRC-16/CCITT-FALSE and CRC-8/SMBUS implementation for PIC MCUs.

# Example of usage in a C program
The example can be used either in C or in assembly (ironically easier in assembly). The folder exampleC contains a usage demo, it was tested with (and mostly written for) my stack which is <a href="https://gputils.sourceforge.io/">gpasm</a> for the assembler and <a href="https://sdcc.sourceforge.net/index.php">sdcc</a> as a C compiler and linker.

Compilation example:
```bash
sdcc -c -mpic14 --use-non-free -p16f690 test.c -o test.o
gpasm -c -p 16f690 crc16_Clib.asm -o crc16.o
sdcc -mpic14 --use-non-free -p16f690 test.o crc16.o -o crcInC.hex
```

# License
<p>This project is licensed under the MIT NON-AI License which can be found here: <br>
<a href="https://github.com/non-ai-licenses/non-ai-licenses"> https://github.com/non-ai-licenses/non-ai-licenses </a> <br>
Credit to <a href="https://github.com/axel22"> axel22</a>.</p>
