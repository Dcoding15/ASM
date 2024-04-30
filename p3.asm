section .data
section .bss
section .text
global _start
_start:
	mov al, 3
	mov bl, 2
	mul bl

	; system exit
	mov rax, 60
	mov rdi, 0

;1,2,5,6,7,8
