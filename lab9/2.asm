; 2. Write an assembly language program that takes a string (having 60 characters at max.) as input from user, and display
; the string at the center of the clear screen.


    .model small
    .stack 32
    .data
str db 60 dup('?')
len dw 00
    .code
main proc far
    mov ax, @data
    mov ds, ax
    mov di,0

read:
    mov ah, 01h 
    int 21h 

    mov str[di], al 
    inc di
    cmp al,0dh ; enter ascii value
    jne read


  ;set video mode
    mov ah, 00h 
    mov al, 03h ; attribute
    int 10h 
    
    
    mov ax, di 
    mov bl, 02h
    div bl

  
    ; set cursor
    mov dh, 12; row 
    mov dl, 20h ; column 
    sub dl, al
    mov ah, 02h 
    int 10h 

    mov cx, di 
    mov di, 0
write:
    mov dl, str[di]
    mov ah, 02h
    int 21h
    inc di 
    loop write

    ; terminate
    mov ax, 4c00h
    int 21h
main endp



    end main