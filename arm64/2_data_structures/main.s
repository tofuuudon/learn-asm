.text

.global _start
.align  4

_start:
	mov  x0, #1
	adrp x1, hello_world@PAGE
	add x1, x1, hello_world@PAGEOFF
	mov  x2, #13
	mov  x16, #4
	svc  #0x80

	mov x0, #0
	mov x16, #1
	svc #0x80

.data

hello_world:
	.asciz "hello, world!"

