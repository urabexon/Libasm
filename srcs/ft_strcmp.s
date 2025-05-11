# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 19:20:54 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 21:03:42 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

; ft_strcmp.s

section .text
global ft_strcmp

ft_strcmp:
    xor     rax, rax

.loop:
    mov     al, [rdi]   ; それぞれ1byte読み込む
    mov     bl, [rsi]
    cmp     al, bl      ; 比較する
    jne     .diff       ; diffして違えば差を返す

    test    al, al
    je      .equal
    inc     rdi
    inc     rsi
    jmp     .loop

.diff:
    movzx   eax, al     ; unsigned charにする
    movzx   ebx, bl
    sub     eax, ebx
    ret

.equal:
    xor     eax, eax
    ret
