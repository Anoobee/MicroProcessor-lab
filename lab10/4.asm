;4. Write a program that takes a string and count the no of vowels in the string. Display the count in decimal format.



    .model small
    .stack 32
    .data
maxchr db 50
len    db ?
str    db 50 dup('0')
vcount dw 00h
vowel db "aeiouAEIOU"
    .code
main proc far
    mov ax, @data
    mov ds, ax

      ; read 
    mov ah, 0ah 
    lea dx, maxchr
    int 21h 

    mov cl,  len 
    mov ch, 00h
    mov di, 00h 
back: 
    mov al, str[di]
    call vcounter
    inc di
    loop back

    ; video mode
    mov ah, 00h 
    mov al, 03h
    int 10h 

    mov ax, vcount 
    call display
    
    mov ah, 02
    mov dl, 0dh
    int 10h
    
    mov ax, dcount 
    call display
    
    ; terminate
    mov ax, 4c00h
    int 21h

main endp

vcounter proc 
    ; al = char
    push cx 
    mov cx, 0ah
    mov si, 0h
back1:
    cmp al, vowel[si]
    jne next1
    inc vcount
    pop cx  
    ret
next1: 
    inc si
    loop back1

    pop cx 
    ret

vcounter endp



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

    end main