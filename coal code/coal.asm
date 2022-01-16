INCLUDE Irvine32.inc;
.data
	var1 Byte 16
	var2 byte 32 
	var3 byte 64
	var4  byte 64
	var5 byte ?
	var6 byte ?
	var7 byte ?
	ls byte ?
	gr byte ?
	count byte ?
	str1 BYTE "e is ",0
	str2 BYTE "times less than",0
.code
	main PROC
	mov al,var1
	add al,var2
	mov var5,al 
	mov bl,var5
	cmp bl,var4
	JE L1
		jmp L2
	L1:	
		mov var7,1
	L2:
		mov var7,0
	xor eax,eax
	mov al,var5
	cmp al,var4
	JA L3
		jmp L4
	L3:
		mov gr,1
	L4:
		mov gr,0
	xor eax,eax
	mov al,var5
	cmp al,var4
	JB L5
		jmp L6
	L5:
		mov ls,1
	L6:
		mov ls,0
		xor eax,eax
		mov al,var5
		cmp al,var4
		JNE L7
			jmp L8
		L7:
			 INC count
		L8:
		mov edx,offset str1
		call writestring
		mov Al,count
		call writeint
		mov edx,offset str2
		call writestring
		
	call writedec
	

	exit
main ENDP
END main

	
	
	
