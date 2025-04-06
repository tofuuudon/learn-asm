.text

.global append_to_array
.align 4

append_to_array:
  stp x29, x30, [sp, #-16]!
  mov x29, sp

  ldp x29, x30, [sp], #16
  ret
