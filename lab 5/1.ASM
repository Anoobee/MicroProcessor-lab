; Write a program to set zero and parity flags and reset other flags


MVI A, 00H 
ADI 00H ; 0 + 0 ; WIL SET THE ZERO FLAG AND PARITY FLAG, RESET AC AND SIGN
STC
CMC ; RESET C FLAG
HLT
