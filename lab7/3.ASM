    ; There are two tables having ten 16-bit data in each. Write an assembly language program to generate the third table
    ; which   contains,   the,        sum,    of, corresponding, element, of, first, and, second, table.


    data    segment

    data    ends

    code    segment
    assume  cs:code,    ds:data

start:
    mov     ax,         data
    mov     ds,         ax
    mov     cx,         0ah
    mov     bx,         1000h
    mov     di,         1020h
    mov     si,         1040h


    back    :
    mov     dx,         [bx]
    add     dx,         [di]
    mov     [si],       dx
    add     bx,         2h
    add     di,         2h
    add     si,         2h
    loop    back
    int     03h
    code    ends
    end     start
