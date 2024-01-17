;Write a program to add nos. from one to fifty and display the 16 bit result at port A & B. 

LXI H, 00H
MVI B, 00H
MVI C, 50H
THIS: DAD B
DCR C
JNZ THIS
MOV A,L
OUT 40H
MOV A,H
OUT 41H 
HLT
