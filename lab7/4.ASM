    ; 4. Two tables of data are stored having ten 16-bit data each. Write an assembly language program to generate the third
    ; table which contains 1FFFH if the corresponding data in first table is less then that of second table, else store 0000.


    .model small
    .stack 32
    .data
array1 dw 1,2,3,4,5,6,7,8,9,10  
array2 dw 10 dup(5)
array3 dw 10 dup(5)
    .code 
main proc far 
    mov ax, @data
    mov ds, ax 
    mov cx, 10h
    
    mov si , 0
   



back: 
    mov dx, array1[si]
    cmp dx, array2[si]
    mov dx, 1FFFH
    jl store
    mov dx,0000h 
store:
     mov array3[si], dx 
     inc si
    loop back 

    mov ax, 4c00h 
    int 21h
main endp 
    end main


