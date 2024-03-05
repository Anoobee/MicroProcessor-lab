;1. Write a program to find the sum of numbers from 1 to n. Read n from the user and display the sum as the decimal format.
;(also try to display the sum in Hexadecimal format)

; ascii --> value sub 30h
; 
    .model small
    .stack 32
    .data
str db "enter the number: $" 
num db ? 
sum dw 00
    .code
main proc far
    mov ax, @data
    mov ds, ax
    
    ; display message 
    lea dx, str
    mov ah, 09h
    int 21h

    ; read n 
    mov ah, 01h
    int 21h
    sub al, 48 ; ascii to value
    mov num, al ; 

    ; caluclate 
    mov cx, 00h
    mov cl, num
    
back:
    add sum ,cx
    ;call bcd
    loop back

    ; decimal adjust
    

    ; display
    mov ah, 02h 
     ; break line 
    mov dl, 0ah
    int 21h
    mov ax, sum
    mov dx, 00h 

    call display

    ; terminate
    mov ax, 4c00h
    int 21h

main endp
bcd proc 
; sum to decimal
    mov bx, sum
    mov al, bl
    daa 
    mov bl, al
 
    mov sum, bx
    ret
bcd endp

display proc
; ax = value
    mov cx, 00h
back2 :
    mov dx, 00h
    mov bx, 10
    div bx ; dx = rem, ax = quotient
    add dx, 30h; ascii to value
    push dx
    add cx, 1h
    cmp ax, 00h
    jne back2

    mov ah, 02h
pooop:
    pop dx 
    int 21h
    loop pooop

    ret
    




display endp

    end main