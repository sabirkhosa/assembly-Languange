
include irvine32.inc
.data

array Dword 1,2,3,4,5,6,7,8,9,10
count dword 10




.code
main proc

call BubbleSort array,count




exit
main endp


BubbleSort PROC USES eax ecx esi,
pArray:PTR DWORD, ; pointer to array
Count:DWORD ; array size

mov ecx,Count
dec ecx ; decrement count by 1
L1: push ecx ; save outer loop count
mov esi,pArray ; point to first value
L2: mov eax,[esi] ; get array value
cmp [esi+4],eax ; compare a pair of values
jge L3 ; if [esi] >= [edi], don't exch
xchg eax,[esi+4] ; exchange the pair
mov [esi],eax
L3: add esi,4 ; move both pointers forward
loop L2 ; inner loop
pop ecx ; retrieve outer loop count
loop L1 ; else repeat outer loop
L4: ret
BubbleSort ENDP


end main