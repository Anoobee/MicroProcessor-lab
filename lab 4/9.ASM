; Change the program in assignment 8 to display 80H if the bit is 1 else nothing.


LDA 9025H
RAL
RAL
RAL
JNC L1
MVI A , 80H 
OUT 41H
L1: HLT