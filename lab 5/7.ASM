; Write a program to rotate the data 3C in port A. Call a delay subroutine for the delaying.


MVI A, 03CH
MVI B, 8H 
L1: OUT 40H
RLC
MVI C , 50H
DELAY: NOP
NOP
NOP 
NOP
DCR C
CNZ DELAY
DCR B
CNZ L1
HLT 