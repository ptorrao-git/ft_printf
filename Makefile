# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ptorrao- <ptorrao-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/24 18:39:18 by ptorrao-          #+#    #+#              #
#    Updated: 2024/05/24 18:39:21 by ptorrao-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC				= cc -g
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror

NAME			= libftprintf.a

SRCS			=	ft_printf.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_uputnbr.c ft_hexa.c ft_pointer.c

OBJS = $(SRCS:.c=.o)

all:			$(NAME)

$(NAME):		
				$(CC) $(CFLAGS) -c $(SRCS)
				ar rcs $(NAME) $(OBJS)

main : all

clean:
				$(RM) $(OBJS) 

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY:			all clean fclean re