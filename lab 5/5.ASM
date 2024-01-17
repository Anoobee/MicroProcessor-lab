; Write a program that will count up from 00 to FF at port A. Be sure to use PCHL command. 

MVI A, 00H
L8001: OUT 00
INR A
JZ L8006

LXI H,L8001
PCHL

L8006: HLT 