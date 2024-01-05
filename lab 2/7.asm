;Write a program to exchange the content of register pair BC and DE with the use of XCHG instruction. Assume
;data AABBH and CCDDH are in register pair BC and DE respectively. Examine the register contents before and
;after execution


LXI B,0AABBH
LXI D,0CCDDH
MOV H,B
MOV L,C
XCHG
MOV B,H
MOV C,L
HLT