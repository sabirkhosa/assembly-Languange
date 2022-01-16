include irvine32.inc

.data
	var byte ?
	arr byte 10 dup(?)
	;arr1 byte lengthof array dup(?)
	str1 byte "entr a number ",0
	str2 byte "entered number in list are :",0
	str3 byte "number after sorting are :",0
	msg1 byte "the maximum value is  ",0
	msg2 BYTE "THE minimum value is  ",0
	
.code 
	main proc
	mov edx,offset str1
	call writestring
	;call readint
	mov esi,0
	mov ecx,lengthof arr
	mov eax,eax
	L1:
		
		call readint
		mov arr[esi],al
		inc esi
		loop L1
	xor edx,edx
	xor esi,esi
	xor ecx,ecx
	xor eax,eax
	
	mov ecx,lengthof arr
	mov edx,offset str2
	call writestring
	mov esi,0
	L2:
		mov al,arr[esi]
		call writedec
		mov al, " "
		call writechar
		inc esi
		loop L2
		call crlf
	xor ecx,ecx
	xor esi,esi
	mov ecx,lengthof arr
	mov esi,0
	
	L3:
		push ecx
		xor ecx,ecx
		mov ecx,lengthof arr
		mov esi,0
		Label1:
			mov al,arr[esi]
			cmp al,arr[esi+1]
			jb L4
			inc esi
		loop Label1
		L4:
			xchg al,arr[esi+1]
			mov arr[esi],al
		pop ecx
		inc esi
		loop L3
		
		xor edx,edx
		xor esi,esi
		xor ecx,ecx
		xor eax,eax
		mov edx,offset arr
		mov esi,0
		mov ecx,lengthof arr
		mov edx,offset str3
		call writestring
		mov esi,0
		L5:
			mov al,arr[esi]
			call writedec
			mov al," "
			call writechar
			inc esi
			loop L5
		
	quit:
		exit
	main endp
	end main
		
	