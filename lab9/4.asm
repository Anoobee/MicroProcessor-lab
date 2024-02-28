;4. Write an assembly language program that takes a string (having 14 characters at max.) input from user and scroll a
;window of size 20×20 at the center of screen. Then display the string at the center of scrolled window. (You can
;choose the color attribute yourself).



    .model small
    .stack 32
    .data
str db 14 dup('?')
len dw 00h 
    .code
main proc far
    mov ax, @data
    mov ds, ax

    mov di, 00h
read: 
    mov ah, 01h 
    int 21h 
    mov str[di], al
    inc di 
    inc len
    cmp al, 0dh 
    jne read

    ; video mode
    mov ah, 00h
    mov al, 03h
    int 10h
    
    ; cacluation for center
    mov ax, di 
    mov bl, 02h
    div bl

  
    ; set cursor
    mov dh, 12; row 
    mov dl, 25h ; column 
    sub dl, al
    mov ah, 02h 
    int 10h 
    
    ; scrolling 
    mov ah, 06 ; code 
    mov  al, 10; 20 lines scroling 
    mov bh, 30h ; color
    mov cx, 101ah
    mov dx, 102eh
    int 10h

  

    mov cx, len 
    mov di, 00h
write:
    mov ah, 02h
    mov dl, str[di]
    int 21h

    inc di 
    loop write

    ; terminate
    mov ax, 4c00h
    int 21h
main endp

    end main