;Two 16-bit data are stored in memory as shown in table below. Write a program to add 16-bit data at memory
;location 9000 (4790H) and at 9010 (6283H), and display the result in output ports. Use port A for lower byte and
;port B for higher byte.

; set the value of 9000 = 90, 9001 = 47. Also, 9010 = 83, 9011=62

LHLD 9000H
XCHG
LHLD 9050H 
MOV A,E
ADD L
OUT 40
MOV A,D 
ADC H
OUT 42
HLT 

