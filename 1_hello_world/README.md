# 1. hello, world

This is my first attempt writing x86_64 assembly using NASM. Of course, we'll write a 'hello, world' programme.

## What I learnt

### Sections

- `section .data` is used for declaring static data.
- `section .text` is your source and what will be executed.

### Data and addresses

- `msg` is `hello, world`, the `10` is the decimal value of a line break (ASCII LF).
- `equ` is a directive to denote a constant a value - for which it cannot be changed.
- `$` represents the current address.

#### How do we get the length of `msg`?

Below is an example of how our `msg` could be allocated to memory starting at `0x1000`.

```
0x1000	h     (0x68)
0x1001	e     (0x65)
0x1002	l     (0x6C)
0x1003	l     (0x6C)
0x1004	o     (0x6F)
0x1005	,     (0x2C)
0x1006	Space (0x20)
0x1007	w     (0x77)
0x1008	o     (0x6F)
0x1009	r     (0x72)
0x100A	l     (0x6C)
0x100B	d     (0x64)
0x100C	LF    (0x0A)
```

After `LF` (new line), the address will be `0x100D`. Therefore, the length of the string will be the current address subtract the starting address of `msg`.

```
$ (0x100D) - msg (0x1000) = 13
```

### Basic syntax and registers

- `mov` is to move some value or copy values from other addresses/registers.
- `r` prefix denotes 64-bit registers, whilst `e` denotes 32-bit.
- `rax` is used for selecting system calls (syscall).
- calling a `sys_write` requires `rdi` the file descriptor, `rsi` the `msg` buffer, and `rdx` the length of the `msg`.
- a file descriptor value of `1` denotes a `stdout` - whilst `0` denotes `stdin` and `2` for `stderr`
- `rax` in this programme is set to `1` which will call `sys_write`.
- `syscall` is a modern implementation of `int 0x80` - which is an interupt.

This `hello_world` programme will print `hello, world` and exits with `0`.

### Debugging

Using the GNU Debugger (gnu) is very useful and lets you add breakpoints and step through instructions.
