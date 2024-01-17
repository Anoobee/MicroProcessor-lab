;Write a program to set auxiliary flag and reset parity flag without affecting other flags.

PUSH PSW
XTHL 
MOV A, L
ORI 10H
ANI 0FBH
PUSH H
POP PSW
HLT