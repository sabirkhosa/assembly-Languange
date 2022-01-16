Include irvine32.inc

.data
	var1 real4 0.8
	var2 real4 1.5
	var3 Dword ?
.code 
      main PROC
      xor eax,eax
      fld var1
      fmul var2
      fstp var3

      exit
main ENDP
END main