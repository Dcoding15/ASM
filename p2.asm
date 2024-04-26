section .data
; types of binary data
; db ==> 1 byte
; dw ==> 2 bytes
; dd ==> 4 bytes
; dq ==> 8 bytes
; dt ==> 10 bytes
	num1 db 1
	num2 db 2
	num3 db 0
section .bss
; resb ==> reserve byte
section .text
global _start
_start:
	mov al, [num1]
	mov bl, [num2]
	add al, bl
	mov [num3], al

;	mov rax, 1
;	mov rdi, 1
;	mov rsi, [num3]
;	mov rdx, 50
;	syscall

	mov rax, 60
	mov rdi, [num3]
	syscall
