; char *strdup(const char *s);
; RETURN On success, the strdup() function returns a pointer to the duplicated string. 
; rdi = str

section .text
    global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern malloc

    ft_strdup:
        call ft_strlen	; Calculate the length of the input string
        push rdi		; Save the original value of rdi (address of the input string) on the stack
        mov rdi, rax	; Set rdi to the length of the string
        inc rdi			; rdi length of the string + 1 (for null terminator)
        call malloc		; Allocate memory for the new string
        pop rdi			; Restore the original value of rdi from the stack
        cmp rax, 0		; Check if malloc succeeded
        jz fail			; If rax is 0, jump to fail

        mov rsi, rdi	; Copy the string from the original address (rsi) to the newly allocated memory (rdi)
        mov rdi, rax
        call ft_strcpy
        jmp return		; Jump to the return label
    fail:
        xor rax, rax	; Set the return value (rax) to 0 (indicating failure)
    return:
        ret				; Return with the value in rax
