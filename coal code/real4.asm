Include irvine32.inc

.data
	var7 real10 16.5
	var8 real10 10.5
	var9 Dword ?
.code 
      main PROC
      xor eax,eax
      fld var7
      FSUB var8
      fstp var9

      exit
main ENDP
END main