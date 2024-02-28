; 6. Write a program to read a string and display each word in separate lines.


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
    mov ah, 02h 
    mov dl, str[di] ; dl ma ascii value hunca parxa char display garna
    cmp dl,20h
    jne skip
    ; for new line if dl=white space
    mov dl, 0dh ; carriage return  (moves cursor to fron)
    int 21h
    mov dl, 0ah ; line feed    (moves to  next line)

skip:
    
    int 21h 
    inc di
loop show   
    mov ax , 4c00h
    int 21h

main endp

    end main