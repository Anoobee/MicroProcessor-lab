; Write a program to read string from the user (use function that reads string) and display the string in another line. (To
; display the character in new line display characters 0DH and 0AH)




    .model small
    .stack 32
    .data

str db,20,?, 20 dup(' ') ; 20 is the maxlenth of character to read

    .code
main proc far
    mov ax, @data
    mov ds, ax

    
    lea dx, str
    mov ah, 0ah ; reads a string 
    int 21h

    mov ah, 02h 
    mov dl, 0dh ; carriage return 
    int 21h
    mov dl, 0ah ; line feed 
    int 21h
    
    mov bl, str[1] ; second element consists of lenght of entered char
    mov bh, 00
    mov str[bx], '$'

    mov dx, offset str                                                                                                                ; give pointer of str to dx
    mov ah, 09h
    int 21h



main endp
    mov ax, 4c00h
    int 21h
    end main