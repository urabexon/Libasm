; ft_write.s

section .text
global ft_write
extern __errno_location

ft_write:
    mov     rax, 1  ; syscall番号(write)
    syscall
    cmp     rax, 0
    jl      .error  ; rax < 0はエラー
    ret

.error:
    mov     rdi, rax
    neg     rdi     ; 正のerrnoコードに変換
    call    __errno_location
    mov     [rax], edi
    mov     rax, -1
    ret
