   ;2. Write a program to display the same string using character reading function (use current address operator $ to count the no
;    of characters e.g.
;    STR DB "String to be displayed"
;    LEN DW $-STR ;Gives the length of the string STR

   
   
    .model small
    .stack 32
    .data
str db 10 dup(' ')
len dw $-str ; gives the length
    .code
main proc far
    mov ax, @data
    mov ds, ax
    mov di, 0
    mov cx, len

display:
    mov dl, str[di]
    mov ah, 02h 
    int 21h 
    inc di
loop display   
    mov ax , 4c00h
    int 21h

main endp

    end main