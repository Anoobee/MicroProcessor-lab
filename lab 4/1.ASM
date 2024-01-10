;  Write a program to AND the content of reg B and content of memory at 9030. Assume the content of 9030 as 34
;   and reg B as 92.
; SET THE VALUE OF 9030 = 34H

LDA 9030H
MVI B , 92H
ANA B
HLT ; A = 10H AAUXA
