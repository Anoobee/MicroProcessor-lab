    ; 1. Write an assembly language program to sum numbers from 0 to 255.

    data    segment

    sum     dw,         00H
    carry   db,         00h

    data    ends

    code    segment

    assume  cs:code,    ds:data

start:    mov     ax,         data
    mov     ds,         ax
    mov     cx,         255H
back:    nop     
    add     sum,        cx
    jnc     skip
    add     carry,      1h
skip:    nop     
    loop    back
    mov     dx,         sum
    mov     cl,         carry
    int     03h

    code    ends
    end     start
