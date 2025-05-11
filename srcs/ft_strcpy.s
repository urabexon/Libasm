# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 19:20:59 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 20:57:27 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
