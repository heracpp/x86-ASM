.section .data
buffer:
    .byte 0x00             # 1 byte memory initialized to 0

.section .text
.globl _start              # Entry point

_start:
    movl $0x64, %eax       # EAX = 100
    movb $0x50, buffer     # buffer = 80
    movl $1, %eax          # exit syscall number
    movl $0, %ebx          # exit status 0
    int $0x80              # system call
