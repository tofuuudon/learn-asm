.global _start
.align  4

_start:
	mov X0, #1
	adr X1, hello_world
	mov X2, #13
	mov X16, #4
	svc #0x80

	mov X0, #0
	mov X16, #1
	svc #0x80

hello_world:
	.asciz "hello, world!"

