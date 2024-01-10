;   Write a program that will check whether D4 bit of data at address 9030 is zero. Just check the result after the
;   operation.

MVI B, 8H 
LDA 9030H
ANA B 
HLT ; Z = 0 (D4 MA ONE XA) , Z =1(D4 MA ONE XAINA)