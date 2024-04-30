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
	num5 db 3 dup(2)
section .bss
; resb ==> reserve no. of bytes
; Can't put any value directly to variable. First assign value to register then assign to variable
	num4 resb 1
section .text
global _start
_start:
;	mov al, [num1]
;	mov bl, [num2]
;	mov cl, 5
	mov dl, [num5]
;	mov [num4], cl
;	add al, bl
;	mov [num3], al

	mov rax, 60
	mov rdi, 0
	syscall
