# 2. Reading and writing

Following on from my 'hello, world' programme, it's time to read/write something.

## What I learnt

### Sections

- `section .bss` stands for 'block starting symbol' and is used for uninitialized memory, e.g. for user inputs.
- `resb` is a directive to reserve bytes from the memory. In our case, I'm reserving 64 bytes (64 characters).

### Reading

- setting `rax` to `0` will use `sys_read`.
- `rdi` is the file descriptor, and setting it to `0` denotes a `stdin`.
- `rsi` takes the address of the `buffer` as defined in `.bss` to store the input.
- `rdx` is simply the length of `buffer` which is `64`.

### Writing

This is pretty much the same as my previous 'hello, world' programme. It will write to stdout and exits 0.
