; 6. Write a program to find the sum of the following series up to 20 terms and store the result
; 2 x 3 + 4 x 5 + ... to 20 terms

    .model small
    .stack 32
    .data
sum dw 0
num db 2
    .code
main proc far
    mov ax, @data
    mov ds, ax

    mov cx, 20 
    
back: 
    mov al, num
    inc num 
    mul num
    add sum, ax 
    inc num 
    loop back

    mov ax, 4c00h
    int 21h

main endp

    end main