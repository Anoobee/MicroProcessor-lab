    ; Write an assembly language program to add ten 16-bit numbers stored in memory and store the result.

    data    segment

    data    ends

    code    segment
    assume  cs:code,    ds:data

start:
    mov     ax,         data
    mov     ds,         ax
    mov     cx,         00ah
    mov     bx,         1000h
    mov     dx,         00h
back:
    add     dx,         [bx]
    add     bx,         02h
    loop    back

    int     03h
    code    ends
    end     start