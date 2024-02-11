section .data
    hello_message db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Display "Hello, World!" using DOS interrupt 21h
    mov ah, 09h                     ; Function 09h - Display String
    lea dx, [hello_message]         ; Load the address of the message
    int 21h                         ; Call DOS interrupt

    ; Exit the program
    mov ah, 4Ch                     ; Function 4Ch - Exit program
    int 21h                         ; Call DOS interrupt
