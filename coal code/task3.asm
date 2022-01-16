INCLUDE Irvine32.inc;
.data
	num Byte ?
	var1 byte 100
	var2 byte 90
	var3 byte 80
	var4 byte 70
	var5 byte 60
	string byte "enter a number ",0
	str1 BYTE "grade is  A ",0
	str2 BYTE "grade is  B ",0
	str3 BYTE "grade is  C ",0
	str4 BYTE "grade is  D ",0
	str5 BYTE "grade is  F ",0
	

	
.code
	main PROC
	xor eax,eax
	mov edx,offset string
	call writestring
	call readint
	;mov num,al
	cmp al,var2
	JA L1
        JE L1
	jmp S2	
	L1:
		mov edx,offset str1
		call writestring
		exit
	S2:
	cmp al,var3
	JA L2
	JE L2
	jmp S3
	L2:
		mov edx,offset str2
		call writestring
		exit
	S3:
	cmp al,var4
	JA L3
	JE L3
	jmp S4
	L3:
		mov edx,offset str3
		call writestring
		exit
	S4:
	cmp al,var5
	JA L4
	JE L4
	jmp S5
	L4:
		mov edx,offset str4
		call writestring
		exit
	S5:
	cmp al,var5
	JB L5
	L5:
		mov edx,offset str5
		call writestring

	exit
main ENDP
END main

