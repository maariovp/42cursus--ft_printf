# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mavicent <mavicent@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/12 09:32:11 by mavicent          #+#    #+#              #
#    Updated: 2023/01/12 10:10:41 by mavicent         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

CFLAGS = -Wall -Werror -Wextra

NAME = libftprintf.a

SRCS = ft_printf.c ft_printf_utils.c libft.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean: 
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

so:
	$(CC) -nostartfiles -fPIC $(SRCS)
	$(CC) -nostartfiles -shared -o $(NAME).so $(OBJS)