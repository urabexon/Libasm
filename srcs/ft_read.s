; ft_read.s

section .text
global ft_read
extern __errno_location

ft_read:
   mov     rax, 0   ; readのsyscall番号
   syscall
   cmp     rax, 0
   jl      .error
   ret

.error:
    mov     rdi, rax
    neg     rdi     ; 正に変換
    call    __errno_location
    mov     [rax], edi
    mov     rax, -1
    ret
