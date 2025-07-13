.section .data
buffer:
    .byte 0x00             # Allocate 1 byte in memory and initialize it to 0

.section .text
.globl _start              # Define the program's entry point (_start)

_start:
    movl $0x64, %eax       # Move 100 decimal (0x64 hex) into the EAX register
    movb $0x50, buffer     # Store 80 decimal (0x50 hex) into the variable named buffer
    movl $1, %eax          # Move 1 into EAX to indicate sys_exit system call
    movl $0, %ebx          # Set exit code 0
    int $0x80              # Call Linux to terminate the program

