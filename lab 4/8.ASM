;  Write a program to check the bit D5 of the content of memory at 9025. Display 1 at port A if the bit is 1 else
;  displays nothing. Use the rotating instructions after masking. Use the rotating instruction which uses less no of
;  instructions.

LDA 9025H
RAL
RAL
RAL
JNC L1
MVI A , 1H 
OUT 41H
L1: HLT