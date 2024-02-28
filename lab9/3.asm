;3. Write an assembly language program that takes a string (having 24 characters at max.) from the user and display each
; character at the center of each line.

    .model small
    .stack 32
    .data
str db 24 dup ('?')
len dw 00
    .code
main proc far
    mov ax, @data
    mov ds, ax

    mov di, 0
read: 
    mov ah, 01h 
    int 21h
    mov str[di], al 
    inc di 
    inc len
    cmp al, 0dh
    jne read

    

    ;set video mode(clear screen to)
    mov ah, 00h
    mov al, 03h
    int 10h 

   
    
    dec len ; removing the enter 
    mov cx, len 
    mov di, 00h
    mov dh, 00h
write:
    mov ah, 02h 
    ;set cursor
    mov dl, 20h
    int 10h 

    int 21h
    mov dl, str[di]
    int  21h 
    inc di 
    inc dh
    loop write

    ;terminate
    mov ax, 4c00h
    int 21h
    
main endp

    end main