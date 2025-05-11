# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 19:21:17 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 20:37:33 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

; ft_strlen.s

section .text
global ft_strlen

ft_strlen:
    xor     rax, rax
    
.loop:
    cmp     byte [rdi + rax], 0
    je      .end

    inc     rax
    jmp     .loop

.end:
    ret
