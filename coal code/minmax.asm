include irvine32.inc
 
.data
 
arr byte 10 dup(?)
str1 byte "enter a number ",0 
msg1 byte "the maximum value is  ",0
msg2 BYTE "THE minimum value is  ",0

Maximum byte 0
Minimum byte 0

.code

	main proc
	mov edx,offset str1
	call writestring
	mov esi,0
	mov ecx,lengthof arr
	mov eax,eax
	L1:
		call readint
		mov arr[esi],al
		inc esi
		loop L1
xor ecx,ecx
xor eax,eax
xor edx,edx

mov edx, offset arr
mov ecx,lengthof arr

 
call Maximum_
mov edx,offset msg1
call writestring
mov maximum,al
call writedec
 
xor ecx,ecx
xor eax,eax
xor edx,edx
mov edx, offset arr
mov ecx,lengthof arr
call minimum_
call crlf
mov edx,offset msg2
call writestring
mov minimum,al
call writedec
 
exit
main endp

;--------------------------Maximum_ proc-------------------------

 
Maximum_ proc
mov al,[edx]
L:
 
cmp al,[edx]
jb swap
back_4:
inc edx
loop L
jmp back
swap:
mov al,[edx]
jmp back_4
 
back:
ret
maximum_  endp
 
 
;-------------------------Minimum_ proc-------------------------- 
 
Minimum_ proc
mov al,[edx]
L:
inc edx
cmp al,[edx]
ja swap
loop L
jmp back
swap:
mov al,[edx]
dec ecx
jmp L
 
back:
ret
minimum_  endp

end main