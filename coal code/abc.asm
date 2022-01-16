        INCLUDE Irvine32.inc;
	.data
		counter byte ?
	.code
	main PROC
	mov ecx,0
	mov cl,5
	L1:
	mov eax,ecx
	call writedec
	mov counter ,cl
	mov cl,2
		L2:
		mov eax,ecx
		call writedec
		call crlf
		loop L2
	mov cl, counter
	loop L1
	
	exit
	main ENDP
	END main