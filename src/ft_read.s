section .text
    global ft_read

    ft_read:
        mov rax, 0  ; Set the system call number for read to rax (0 is the syscall number for read)
        syscall     ; Invoke the syscall to read from the standard input
        ret         ; Return from the function