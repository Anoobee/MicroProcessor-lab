;Suppose the accumulator content is 25H and register B has 48H. Write a program to subtract the reg B from
;accumulator and store the result in reg C. Again swap the acc content and reg B content and subtract the reg B
;content from acc content. See the flag content and the reg content before and after the subtraction


MVI A, 25H
MVI B, 48H
SUB B 
MOV C, A 
MOV D, A
MOV A, B 
MOV B, D 
SUB B
HLT
