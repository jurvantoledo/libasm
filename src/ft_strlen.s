section .text
    global ft_strlen

    ft_strlen:
        xor rax, rax            ;Set rax (used as a counter) to 0 || see it as (i = 0)
        jmp compare             ;Jump to the compare section (initial comparison)
    add:
        add rax, 1               ;Increment the counter (i++)
    compare:
        cmp BYTE [rdi, rax], 0  ;Compare the byte at the address (rdi + rax) with 0 || see it as (str[i] == 0)
        jne add                 ;Jump to the add section if the byte is not equal to 0 (end of the string)
    return:
        ret                     ;Return, with the length of the string in rax
