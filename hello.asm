section .data
    hello db 'Hello World!',0

section .text
    global _start

_start:
    ; write Hello World! to stdout
    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor 1 is stdout
    mov rsi, hello      ; pointer to the message
    mov rdx, 13         ; message length
    syscall

    ; exit the program
    mov rax, 60         ; syscall number for sys_exit
    xor rdi, rdi        ; exit code 0
    syscall
