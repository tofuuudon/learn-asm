section .bss
	buffer resb 64

section .text
	global _start

_start:
	; read stdin to buffer
	mov rax, 0
	mov rdi, 0
	mov rsi, buffer
	mov rdx, 64
	syscall

	; write buffer to stdout
	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 64
	syscall

	; exits 0
	mov rax, 60
	mov rdi, 0
	syscall
