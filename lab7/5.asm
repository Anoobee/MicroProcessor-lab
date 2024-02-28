; 5. Write a program to generate and store a multiplication table of a number stored as num1


    .model small
    .stack 32
    .data
num1 db 5
table db 10 dup(1)

    .code
main proc far
    mov ax, @data
    mov ds, ax

    mov cx,10h 
    mov si, 0

back: 
    mov al, num1
    mul si 
    mov table[si], al 

    inc si 
    loop back 
    mov ax, 4c00h 
    int 21h
main endp
    end main