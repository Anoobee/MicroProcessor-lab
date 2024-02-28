; Write a program to read the string and convert it into upper case if it is in lower case and display the resulting string.
; Process the string in the memory before displaying


    .model small
    .stack 32
    .data
str db 10 dup('?')
len dw 0
    .code
main proc far
    mov ax, @data
    mov ds, ax
    mov di, 0 ; index

read: 
    mov ah, 01h 
    int 21h
    cmp al,61h
    jl next ; 61h vanda below
    cmp al,7ah
    jg next ; 7ah vanda mathi
    sub al, 20h ; to higher value
next:
    mov str[di], al 
    inc di 
    inc len
    cmp al, 0dH  ; enter ascii value
    jne read


    
   ; dec len; as the enter is also included
    mov cx, len
    mov di, 00 ; reset the index

write:
    mov dl, str[di]
    mov ah, 02h 
    int 21h
    inc di
    loop write

    mov ax, 4c00h
    int 21h 
main endp


    end main