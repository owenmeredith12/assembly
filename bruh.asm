section .text
global _start



_start:
mov eax, '3'
sub eax, '2'
mov ebx, '4'
sub ebx, '0'
add eax, ebx
add eax, '0'

mov [sum], eax
mov ecx,msg
mov edx, numLen
mov ebx, 0x1
mov eax, 0x4
int 0x80

mov ecx, sum
mov edx, 0x1
mov ebx, 0x1
mov eax, 0x4

int 0x80
 mov eax, 0x1
int 0x80

section .data
	msg db "The sum is:", 0xA, 0xD
	numLen equ $-msg

segment .bss
	sum resb 1
