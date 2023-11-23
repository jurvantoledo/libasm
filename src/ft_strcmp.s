;Input: rdi = str1, rsi = str2
;If equal ret 0

section .text
    global ft_strcmp

    ft_strcmp:
        cmp     rdi, rsi                ;Compare the addresses of str1 and str2
        je      equal                   ;If they are equal, jump to the 'equal' label
        xor     r8, r8                  ;Initialize a counter (r8) to 0
    compare:
        mov     r9b, BYTE [rdi + r8]    ;Load the byte at (rdi + r8) into r9b (character from str1)
        cmp     r9b, BYTE [rsi + r8]    ;Compare the character from str1 with the character from str2
        jl      less                    ;Jump to 'less' if str1 < str2
        jg      more                    ;Jump to 'more' if str1 > str2
        cmp     BYTE [rdi + r8], 0      ;Compare the null terminator (end of str1)
        je      equal                   ;If end of str1 is reached, jump to 'equal'
        add     r8, 1                   ;Move to the next character in both strings
        jmp     compare                 ;Jump back to the beginning of the 'compare' loop
    equal:
        xor     eax, eax                ;Set return value to 0 (strings are equal)
        ret
    less:
        xor     eax, eax                ;Clear the upper bits of eax
        sub     r9b, BYTE [rsi + r8]    ;Calculate the difference (str1 - str2) and store in r9b
        movsx   eax, r9b                ;Sign-extend the difference to 32 bits (eax)
        ret
    more:
        xor     eax, eax                ;Clear the upper bits of eax
        mov     al, BYTE [rdi + r8]     ;Load the character from str1 into the lower 8 bits of eax
        sub     al, BYTE [rsi + r8]     ;Calculate the difference (str1 - str2) and store in al
        ret
