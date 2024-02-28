;1. Write a program to display a string "Programming is Fun" in the screen using string displaying function


    .model small
    .stack 32
    .data
string1 db "Programming is fun$"
    .code
main proc far
    mov ax, @data
    mov ds, ax
    
    lea dx, string1
    mov ah, 09h
    int 21h

    mov ax, 4c00h
    int 21h
main endp

    end main