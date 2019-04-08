bits 32

global start
extern entry


section .text
    align 4
    dd 0x1BADB002
    dd 0x00
    dd - (0x1BADB002 + 0x00)

start:
    cli
    mov esp, stack_space
    call entry
    hlt

section .bss
    resb 16384


stack_space:
