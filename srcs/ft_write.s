# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 19:21:09 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 21:18:33 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
