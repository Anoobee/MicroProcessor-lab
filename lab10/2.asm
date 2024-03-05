;2. Write a program to find the sum of the following series up to the terms specified by the user and display the result in
;decimal format. (also try to display the sum in Hex format)
;2 x 4 + 3 x 6 + ... to n terms
    .model small
    .stack 32
    .data
str db "enter the number: $" 
max db 4 
len db ?
num db 4 dup('?')
sum dw 00
    .code
main proc far
    mov ax, @data
    mov ds, ax
    
    ; display message 
    lea dx, str
    mov ah, 09h
    int 21h

    ; read n 
    mov ah, 0ah 
    lea dx, max 
    int 21h 

    ;ascii to hex 
    call aschex ; cx ma hex aauxa


    ; caluclate 
    
    ; 2((2*2)+ (3*3))
back:
    mov al, cl 
    add al, 1h 
    mul al
    add sum ,ax
    add sum ,ax
    loop back

    

    ; display
    mov ah, 02h 
    ; break line 
    mov dl, 0ah
    int 21h
    mov ax, sum
    mov dx, 00h 

    call display

    ; terminate
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
    jne back2

    mov ah, 02h
pooop:
    pop dx 
    int 21h
    loop pooop

    ret
display endp

aschex proc
    ; LOGIC D0+D1*A+D2*A*A
    mov dl, len 
    mov dh, 00h 
    mov di, dx
    dec di ; max index
    mov cx, 00h; store the final hex
    mov bl, 1h ; goes in the power of 10
back3:
    mov al, num[di]
    sub al, 30h
    mul bl
    add cx, ax

    mov al, bl
    mov bl, 0ah
    mul bl
    mov bx, ax
    dec di
    dec dx 
    jnz back3
    
    ret
aschex endp

    end main