include irvine32.inc
.data
	num byte ?
	msg byte "entr a number :",0
	msg1 byte "it is  a  prime number :",0
	msg2 byte "it is not a number :",0
.code 
	main PROC
	mov edx,offset msg
	call writestring
	call readint
	mov num,al
	mov cl,2
	
.WHILE cl<num
	mov bl,cl
	mov al,num
	div bl
	cmp ah,0
	je L1
	mov ah,0
	inc cl
.ENDW
mov edx,offset msg1
call writestring
exit

L1:
	mov edx,offset msg2
	call writestring
	exit
main endp
end main

	
	
	
	