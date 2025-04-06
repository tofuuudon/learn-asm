.text

.global _start
.align  4

_start:
  bl append_to_array

	mov x0, #0
	mov x16, #1
	svc #0x80
