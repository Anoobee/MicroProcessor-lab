; Add sixteen bit data stored in two tables and store the result in the corresponding index of the
; third table if the result in the corresponding index of the third table only if the result is greater
; than 00FFH, else store 0000H (you can assume any address for the tables)



MVI B, 80H 
MVI H, 00H 
MVI D, 20H
MVI E, 60H
PUSH PSW
LOOP: NOP
POP PSW 
MOV C,H 
LDAX B
MOV L,A 
MOV C,D 
LDAX B 
ADC L  
PUSH PSW
MOV C,E 
STAX B 
INR H 
INR D 
INR E 
MOV A,H 
SBI 20H
JNZ LOOP  

LXI B, 8060H ; READING 
LXI D, 8040H ; WRITING TO 
TRANS: NOP 
LDAX B 
MOV L, A 
INR C 
LDAX B 
MOV H , A 
SBI 00H 
JNZ NEXT
LXI H, 00FFH 
NEXT: NOP
MOV A, L 
STAX D 
INX D 
MOV A, H 
STAX D 
INX D
INR C

MOV A, C
SBI 20H 
JNZ TRANS

HLT



