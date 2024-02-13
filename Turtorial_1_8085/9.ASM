; 9. Subtract ten 16-bit data stored in one table from the other. Store the result in the third table if the
; result is positive else store 00.


MVI B, 80H 
MVI D, 40H 
MVI E, 60H
MVI H, 80H


LOOP: NOP
STC 
CMC
MOV C,E
LDAX B  
MOV L,A 
MOV C,D
LDAX B 
SBB L
STA 9000H
INR D 
INR E 

MOV C,E
LDAX B  
MOV L,A 
MOV C,D
LDAX B 
SBB L
STA 9001H
CC NEG


MOV C,H 
LDA 9000H
STAX B 
INR H
MOV C,H
LDA 9001H
STAX B

INR D 
INR E 
INR H


MOV A, D
SBI 54H
JNZ LOOP    
HLT 

NEG: NOP 
MVI A, 00H 
STA 9000H
STA 9001H
CMC 
RET
