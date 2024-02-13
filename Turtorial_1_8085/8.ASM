; 8. In two tables 16-bit data are stored, each table having ten numbers each. Subtract the data from
; one table to other and store the result in the third table.

MVI B, 80H 
MVI D, 40H 
MVI E, 60H
MVI H, 80H

PUSH PSW 
LOOP: NOP
POP PSW  ; MANTAINING THE FLAG AFFTECTED BY SBI 
MOV C,E
LDAX B  
MOV L,A 
MOV C,D
LDAX B 
SBB L
PUSH PSW
MOV C,H 
STAX B 
INR H 
INR D 
INR E 
MOV A, D
SBI 54H
JNZ LOOP    
HLT 