; input = strcyp(str1, str2)
; str1 = rdi, str2 = rsi

; rdi = destination string
; rsi = source string
; rsi should become rdi

section .text
    global ft_strcpy

    ft_strcpy:
        mov r8, rsi 
        xor r8, r8    
        cmp r8, 0      
        jz return 
        jmp copy
    increment:
		inc		r8
    copy:
        mov dl, BYTE [rdi + r8]
        mov BYTE [rsi + r8], dl
        cmp dl, 0
        jnz increment                     
    return:
        mov rax, rdi
        ret