; 1. Write an assembly language program to scroll a window from row 5, column 20 to row 20, column 60 with a reverse
; video attributes. Then locate the cursor at row 12, column 30. And display a string as “Programming in Assembly
; Language is Fun”.

    .model small
    .stack 32
    .data
string1 db "Programming in assembly language is fun$"
    .code
main proc far
    mov ax, @data
    mov ds, ax

    ;set video mode
    mov ah, 00h 
    mov al, 03h ; attribute
    int 10h 
    
    ; setting cursor to 5,20
    mov dh, 5
    mov dl, 20
    call SetCursor


    ; scrolling 
    mov ah, 06 ; code 
    mov  al, 20 ; 15 lines scroling 
    mov bh, 70h ; color
    mov cx, 0514h
    mov dx, 143ch
    int 10h 

  ; setting cursor to 12,30
    mov dh, 12
    mov dl, 30
    call SetCursor

    ; display string 
    lea dx, string1
    mov ah, 09h
    int 21h


    ; terminate
    mov ax, 4c00h
    int 21h


main endp

SetCursor proc
; dh= row , dl= column , bh = page no
mov ah, 02h
int 10h 
ret 
SetCursor endp
    end main