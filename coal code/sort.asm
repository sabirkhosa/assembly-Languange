INCLUDE Irvine32.inc
.data
	arr  byte 10 dup(?)
.code 
	main PROC
	mov esi,0
	mov ecx ,LENGTHOF  arr
               

	L1:	
		call readint
		mov arr[esi],al
		inc esi
		loop L1
		exit
main ENDP
end main
		
	
	
