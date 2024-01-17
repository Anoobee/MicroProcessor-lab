;Suppose the accumulator content is 25H and register B has 48H. Write a program to subtract the reg B from
;accumulator and store the result in reg C. Again swap the acc content and reg B content and subtract the reg B
;content from acc content. See the flag content and the reg content before and after the subtraction


LDA 8071H
MOV B,A
LDA 8072H
SUB B
JNC SKIP ; EQUAL YA GREATER(DIFFERENCE POSITIVE YA ZERO) 
CMA 
INR A
SKIP: STA 8073H
HLT