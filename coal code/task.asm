
; code for clearing first and last bit of number


;INCLUDE Irvine32.inc

;.data
;num BYTE 10011001b 
;num2 BYTE 00011000b
;char BYTE 01111000b


;.code

;main PROC
;mov eax,0
;mov Al,num
;AND Al,num2
;call writebin










;exit
;main ENDP
;END main

; code for conversion x to X and Z to x

;INCLUDE Irvine32.inc

;.data

;charx BYTE  01111000b
;charZ BYTE 01011010b

           
;.code 
;main PROC
;mov eax,0
;mov Al,charx
;AND Al,01011000b
;call writechar
;call crlf
;mov eax,0
;mov Al,charZ
;OR Al,00111000b
;call writechar

;exit
;main ENDP
;END main


; code for two's complement and testing

INCLUDE Irvine32.inc

.data
stri BYTE "code for comparisons",0
strii BYTE "code for testing",0
striii BYTE "looping six times usnig JZ",0
num1 BYTE 11011111b
testing BYTE 00100101b
array BYTE 1,2,3,4,5,6



.code 
main PROC
mov eax,0
mov Al,num1
not Al
Add Al,1
call writebin
call crlf
call crlf
mov edx,offset strii
call writestring
mov eax,0
mov Al,testing
test Al,00010001b
call dumpregs

call crlf
call crlf
call crlf
mov edx,offset stri
call writestring
call crlf
mov Al,8
cmp Al,-8
call dumpregs
call crlf
mov eax,0
mov Al,6
cmp Al,6
call dumpregs
call crlf
mov eax,0
mov Al,-8
cmp AL,8
call dumpregs
call crlf
call crlf
mov edx,offset striii
call writestring
call crlf
mov eax,0
mov esi,0
call dumpregs
l1:
   mov Al,array[esi]
   inc esi
   cmp Al,4
   jc l1









exit
main ENDP
END main

