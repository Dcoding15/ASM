section .data
	msg db "Hello, World!"
	len equ $-msg
section .bss
section .text
global _start

; rax - system call
; rdi - 1st parameter
; rsi - 2nd parameter
; rdx - 3rd parameter
; r10 - 4th parameter
; r8  - 5th parameter
; r9  - 6th parameter
;syscall - for calling x86-64 system call

_start:
	; read operations
;	mov rax, 0
;	mov rdi, 0
;	mov rsi, msg
;	mov rdx, 50
;	syscall

	;write operation
	mov rax, 1
	mov rax, 1
	mov rsi, msg
	mov rdx, len
	syscall

    ; exit operations
;label:     instruction operands    ;comments
    mov rax, 60
    mov rdi, 100
    syscall

; nasm -f elf64 [asm source file]
; ld [asm object file]
