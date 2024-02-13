; Sixteen bit data are stored in two tables starting at 8050H and 8070H, ten data in each table. Add
; corresponding data and store it in the third table starting at 8090H. (Never forget the reverse
; order convention in storing the 16-bit data)


MVI B, 80H 
MVI H, 50H 
MVI D, 70H
MVI E, 90H

LOOP: NOP 
MOV C,H 
LDAX B
MOV L,A 
MOV C,D 
LDAX B 
ADC L 
JNC SKIP

SKIP: NOP 
MOV C,E 
STAX B 
INR H 
INR D 
INR E 
MOV A,H 
SBI 55H
JNZ LOOP    
HLT 