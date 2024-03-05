; 3. Write a program that takes a string and count the number of words in the string. Display the count in decimal format

    .model small
    .stack 32
    .data
max db 20
len db ?
str db 20 dup('?')
count dw 00

    .code
main proc far
    mov ax, @data
    mov ds, ax

    ;read 
    mov ah, 0ah
    lea dx, max
    int 21h 

    ; coutner
    mov cl, len 
    mov ch, 00h
    mov di, 00h 
 
back: 
    mov al, str[di] 
    mov ah, str[di+1]  
    cmp al, ' '
    jne skip
    cmp ah, ' '
    je skip
    inc count 
skip: 
    inc di 
    loop back

    inc count 
    ; display 
    ; line break 
    mov dl, 0ah
    mov ah, 02h
    int 21h 
    mov dl, 0dh 
    int 21h

    mov ax, count 
    call display

    ; terminate 
    mov ax, 4c00h
    int 21h
main endp

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