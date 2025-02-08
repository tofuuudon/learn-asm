section .data
	msg db 'hello, world', 10
	msglen equ $-msg

section .text
	global _start

_start:
	; prints 'hello, world'
	mov rdi, 1
	mov rsi, msg
	mov rdx, msglen
	mov rax, 1
	syscall

	; exits 0
	mov rdi, 0
	mov rax, 60
	syscall
