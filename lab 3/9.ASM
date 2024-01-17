; Suppose reg H has 34 and reg D has 12. Write program to subtract BCD value in reg D from the BCD value in reg
; H. Store the BCD result in reg H.

MVI H, 34H
MVI D, 12H
MOV A,D
CMA 
ADD H 
INR A 
CMC
DAA
MOV H,A 
HLT