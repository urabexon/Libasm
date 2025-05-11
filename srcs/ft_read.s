# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 19:21:03 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 21:27:43 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
