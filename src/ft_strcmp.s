section .text
    global ft_strcmp

    ft_strcmp:
        xor rax, rax    ;Setting rax to 0
        jmp compare
    equal:
        add rax, 1
    compare:
        cmp BYTE [rdi, rsi], 0
        je equal
    return:
        ret