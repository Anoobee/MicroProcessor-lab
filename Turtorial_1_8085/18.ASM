; 18. Write a program to count the number of ones of table of ten sixteen bit numbers at 8240H and
; store the count of one’s in corresponding location of a table at 8260H.
; 

MVI B, 82H 
MVI D, 40H
MVI E, 60H

LOOP: NOP
CALL COUNT
MOV C, E 
STAX B

INR E 
MOV A,E 
CPI 6AH
JNZ LOOP
HLT 

COUNT: NOP
STC 
CMC
MOV A, E
STA 9000H
MOV C, D 
MVI L,00H ; COUNTER 
MVI E,02H
LDAX B 

LOOP3: NOP 
MVI H, 09H
LOOP2: NOP 
RAL 
JNC SKIP
INR L 
SKIP: NOP 
DCR H 
JNZ LOOP2
INR D 
MOV C, D 
LDAX B
DCR E 
JNZ LOOP3 

LDA 9000H
MOV E, A
MOV A, L 
RET 








