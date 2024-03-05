; 5. Write a program to add ten 16-bit numbers stored in memory and store and display the result in decimal format.


    .model small
    .stack 32
    .data
arr dw 1234,2,3,3,4,5,6,7,8,9
sum dw 00
    .code
main proc far
    mov ax, @data
    mov ds, ax
    
    mov cx, 0ah 
    mov di, 00h 
back:
    mov ax, arr[di]
    add sum, ax 
    add di, 2h
    loop back

    mov ax, sum 
    call display 
    call breakline

    mov ax, sum
    call display

    
    mov ax, 4c00h
    int 21h 

main endp    

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
    jne back244.

    mov ah, 02h
pooop:
    pop dx 
    int 21h
    loop pooop

    ret
display endp

breakline proc
    mov ah, 02h 
    mov dl, 0dh ; carriage return 
    int 21h
    mov dl, 0ah ; line feed 
    int 21h 
    ret
breakline endp

    end main
    
