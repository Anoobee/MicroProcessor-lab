MVI A, 054H
LXI D, 07432H
LXI H, 0000H
MVI B, 08H
DAD H
RLC
JNC L8010
L800A: DAD D
L8010: DCR B 
JNZ L800A
MOV A, H
OUT 40H
MOV A, L
OUT 41H
HLT