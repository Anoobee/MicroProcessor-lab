; A table contains ten 8-bit data starting at 8050H. Write an 8085 program to store the sum of odd numbers at
; 8060H and store sum of even numbers at 8070H. Also display the sum of even numbers at output ports after 2-3
; seconds of displaying the sum of odd numbers.

LXI B, 8050H 
LXI H, 00H 
LXI D, 00H 
LOOP: NOP 
LDAX B 
RAR
CC ODD 
CNC EVEN 
INX B 
MOV A, C 
CPI 5AH 
JC LOOP
SHLD 8060H 
MOV A, L 
OUT 41
MOV A,H
OUT 42
CALL DELAY
XCHG 
SHLD 8070H
MOV A, L 
OUT 41
MOV A,H
OUT 42
HLT 

ODD: NOP
LDAX B
ADD L
MOV L, A 
STC 
RET 

EVEN: NOP 
LDAX B 
ADD E 
MOV E ,A
STC 
CMC
RET

; THIS DELAY MIGHT NOT BE SO ACCURATE 
DELAY: NOP
MVI B, 0FH
LATE3: NOP
MVI C, 0FH
LATE2: NOP
MVI A, 0FFH
LATE1: NOP
DCR A  
JNZ LATE1
DCR C
JNZ LATE2
DCR B 
JNZ LATE3
LXI B, 8050H 
RET

