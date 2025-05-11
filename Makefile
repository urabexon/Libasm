# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: urabex <urabex@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/11 18:45:03 by urabex            #+#    #+#              #
#    Updated: 2025/05/11 21:56:56 by urabex           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libasm.a
NASM		=	nasm
NASMFLAGS 	=	-f elf64
RM			=	rm -rf

INCS		=	-I includes/
SRCS_DIR	=	srcs/
OBJS_DIR	=	objs/
SRCS_FILES	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
SRCS		=	$(addprefix $(SRCS_DIR), $(SRCS_FILES))
OBJS		=	$(patsubst $(SRCS_DIR)%.s, $(OBJS_DIR)%.o, $(SRCS))

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS_DIR)%.o : $(SRCS_DIR)%.s
	mkdir -p $(@D)
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	$(RM) $(OBJS_DIR)

fclean:
	$(RM) $(OBJS_DIR) $(NAME) a.out

re: fclean all

.PHONY: all clean fclean re
