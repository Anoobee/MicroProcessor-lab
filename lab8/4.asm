; 4. Write a program to read the string using the character reading function and display the string using character displaying
; function.


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
take:
    mov ah, 01h ; read char
    int 21h
    mov str[di],al 
    inc len
    inc di
    cmp al, 0dh
    jne take
    
    

    mov di, 0
    mov cx, len
show:
    mov dl, str[di] ; dl ma ascii value hunca parxa char display garna
    mov ah, 02h 
    int 21h 
    inc di
loop show   
    mov ax , 4c00h
    int 21h

main endp

    end main