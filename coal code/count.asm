INCLUDE Irvine32.inc
.data
	var1 word ?
	count byte ?
	sum word ?
	str1 byte "enter a number :",0
	str2 byte "number of digits are :",0
	str3 byte "sum of digit is :",0


.code
	main PROC
	xor eax,eax
	mov edx,offset str1
	call writestring
	call readint
	mov cl,0
	mov var1,ax
	mov count,0
	mov sum,0
	
.while var1>0
	xor ebx,ebx
	xor eax,eax
	mov ax,var1
	mov bx,10
	mov dx,0
	div bx
	add sum,dx
	mov var1,ax
	inc count
	inc cl
.ENDW
L1:
	xor eax,eax
	mov edx,offset str2
	call writestring
	mov al,count
	call writedec
	call crlf
L2:
	xor eax,eax
	mov edx,offset str3
	call writestring
	mov ax,sum
	call writedec
exit
main endp
end main

	
	
	
	
	