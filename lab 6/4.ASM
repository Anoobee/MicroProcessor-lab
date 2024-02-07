; Sixteen bit data are stored in two tables starting at 8040H and 8060H having ten data each. Write an 8085 program
; to store the sum in the corresponding index of the third table starting at 8080H. (Assume the sum will not exceed
; 16 bit).

MVI B, 80H 
MVI H, 40H 
MVI D, 60H
MVI E, 80H

LOOP: NOP
MOV C,H 
LDAX B  
MOV L,A 
MOV C,D 
LDAX B 
ADC L 
MOV C,E 
STAX B 
INR H 
INR D 
INR E 
MVI A, 59H
CMP H 
JNC LOOP    
HLT 





