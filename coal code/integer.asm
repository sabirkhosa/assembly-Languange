Include irvine32.inc

.data

str1 byte "Enter Integer: ",0
array Dword 10 DUP(?)
msg BYTE "Val Found",0
msg1 BYTE "Index"
val Dword ?
.code
main proc



mov ecx,lengthof array
mov esi,0

l1:
call readint
mov array[esi],eax
inc esi
loop l1

mov edx,offset str1
call writestring
mov ecx,lengthof array
mov esi,0
call readint
mov val,eax
l10:
mov eax,array[esi]
.IF (val == eax)
    mov edx,offset msg
    call writestring
    mov eax,val
    call writedec
    call crlf
    mov edx,offset msg1
    call writedec
    
    mov eax,esi
    call writedec
    
 .ENDIF
    
 inc esi
 loop l10

exit
main endp
end main