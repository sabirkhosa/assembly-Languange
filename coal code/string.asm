;Input String Copy output
include irvine16.inc


.data

    BUFFER db 81
           db ?
    STRING DB 81 DUP(?)
    STR1 DB 10,13,'$'   



    MESS1 DB 'After Copy',10,13,'$'
    MESS2 DB 81 DUP(?)


.code 
main proc 
mov ax,@data
mov ds,ax
   ; assume cs:code,ds:dataarea,es:extra
start:
    push ds
    sub ax,ax
    push ax

    mov ax,dataarea   
    mov ds,ax

    mov ax,extra      
    mov es,ax

    lea dx,BUFFER     
    mov ah,0ah
    int 21h

    lea si,STRING
    lea di,MESS2
    mov ch,0
    mov cl,BUFFER+1
    cld
    rep movsb
    mov al,'$'
    mov es:[di],al

    lea dx,STR1            ;to next line
    mov ah,09h
    int 21h

    push es
    pop ds

    lea dx,MESS1           ;output:after copy
    mov ah,09h
    int 21h

    lea dx,MESS2
    mov ah,09h
    int 21h

    ret
exit
main endp
end start