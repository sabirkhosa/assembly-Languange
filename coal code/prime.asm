include irvine32.inc
.data
	num byte ?
	var1 byte ?
	var2 byte ?
	;var3 byte ?
	msg byte "entr a number :",0
	msg1 byte "it is  a  prime number :",0
	msg2 byte "it is not a number :",0
	msg3 byte "cursor is here",0
.code 
	main PROC
	mov edx,offset msg
	call writestring
	call readint
	mov num,al
	mov cl,2
	jmp L1
	
L1:
	mov bl,cl
	mov al,num
	div bl
	cmp ah,0
	je L2
	exit
	cmp cl,num
	je L3
	inc cl
	loop L1
	mov edx,offset msg1
	call writestring
	exit
	
L2:
	mov edx,offset msg2
	call writestring
	exit
L3:
	mov edx,offset msg3
	call writestring
	exit
main endp
end main

	
	
	
	