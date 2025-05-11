; ft_strcpy.s

section .text
global ft_strcpy

ft_strcpy:
    push    rdi         ; 戻り値用,popしたものを保存

.loop:
    mov     al, [rsi]
    mov     [rdi], al
    inc     rsi
    inc     rdi
    test    al, al
    jne     .loop

    pop     rax         ; 元のdstをraxに戻して返す
    ret
