include irvine16.inc
.MODEL SMALL
.STACK
.DATA
   ARR word 20 Dup (?)     

.CODE
 MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    XOR BX, BX
    MOV CX, 20

    F: 
      MOV AH, 1
      INT 21H
      MOV ARR[BX], Ax
      INC BX
    LOOP F

    XOR BX, BX
    MOV CX,lengthof ARR
	Call crlf

    PRINT:  
     MOV AX, ARR[BX] 

     MOV AH, 2       
     MOV Dx, AX	 
     INT 21H     
     INC BX
    LOOP PRINT
	call clrscr
	xor dx,dx
	
	mov dh , 0h
	mov dl,30h
	call gotoxy
	
	
	XOR BX, BX
    MOV CX,lengthof ARR
	Call crlf

    L:  
     MOV AX, ARR[BX] 

     MOV AH, 2       
     MOV Dx, AX	 
     INT 21H     
     INC BX
    LOOP L
exit
MAIN ENDP
end main