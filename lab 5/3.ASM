; 3 Write a program to count the no of bits that are 1 in register A. 


MVI A, 0FFH
MVI B, 0H 
MVI C, 8H 
STC
CMC
THIS: RAL
JNC SKIP
INR B
SKIP: NOP
DCR C
JNZ THIS
HLT
