; ft_strdup.s

section .text
global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy
extern __errno_location

ft_strdup:
    push    rdi         ; s保存用
    call    ft_strlen
    inc     rax

    mov     rdi, rax    ; mallocする
    call    malloc
    test    rax, rax
    je      .fail       ; mallocがNULLを返したら失敗

    pop     rsi
    mov     rdi, rax
    call    ft_strcpy
    ret

.fail:
    xor     rax, rax    ; NULL を返す
    ret
