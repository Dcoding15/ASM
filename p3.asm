section .data
	var1 db 'A', 0
	var2 db "My name is ...", 0
section .bss
section .text
global _start
_start:
	; system write
	mov rax, 1
	mov rdi, 1
	mov rsi, [var2]
	mov rdx, 50

	; system exit
	mov rax, 60
	mov rdi, 0
