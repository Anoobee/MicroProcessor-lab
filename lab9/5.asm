; 5. Write a program that a string from the user and display each word in new line diagonally from upper left towards
; bottom right in a clear screen. If the string is “Programming in Assembly Language is Fun”, it shoud be displayed as
; Programming
;            in
;              Assembly
;                      Language
;                              is
;                                Fun


    .model small
    .stack 32
    .data
str db 30 dup('?')
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
    cmp dl,20h
    jne skip
    push cx
    mov ah, 03h ; get SetCursor
    int 10h
    
    inc dh
    dec dl ; for space 
    call SetCursor
    pop cx
 
    
skip:
    mov ah, 02h 
    int 21h 
    inc di
   
loop show  

    mov ax , 4c00h
    int 21h

main endp
SetCursor proc
    ; dh= row , dl= column , bh = page no
    mov ah, 02h
    int 10h 
    ret 
SetCursor endp

    end main