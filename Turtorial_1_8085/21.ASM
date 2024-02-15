; Ten data are stored in memory location starting at 8345H. Write a program to convert binary
; number to BCD number and store the result in the second table in the memory location starting
; at 8445H if the result is less than hundred.


LXI B, 8345H 
LXI D, 8445H 

LOOP: NOP 
STC 
CMC
LDAX B 
DAA 
CPI 64H
JNC NEXT
STAX D 
NEXT:NOP 
INX B 
INX D 
MOV A,C 
CPI 4FH 
JNZ LOOP 
HLT