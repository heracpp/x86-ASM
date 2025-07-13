.section .data          # Data section (empty)
.section .text          # Code section

        .globl _start  # Declare program entry point
_start:
        nop            # No operation (do nothing)

        movl $22, %edx # Move immediate value 22 into EDX register

mov_data_between_registers:
        movl %edx, %eax # Copy value from EDX to EAX register

exit:
        movl $1, %eax  # Syscall number 1 (exit) in EAX
        movl $0, %ebx  # Exit status 0 in EBX
        int $0x80      # Trigger kernel interrupt to make syscall (exit program)
