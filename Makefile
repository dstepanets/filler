# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dstepane <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/02 17:27:03 by dstepane          #+#    #+#              #
#    Updated: 2019/03/02 17:27:05 by dstepane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = dstepane.filler
CC = gcc
FLAGS = -Wall -Wextra -Werror
HEAD = ./filler.h
SRC = main.c

OBJS = $(SRC:.c=.o)
LIBFT = libft/libft.a

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(LIBFT) $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -I $(HEAD) $(LIBFT) -o $(NAME)
	@echo "\033[32mFiller executable compiled.\033[0m"

$(LIBFT):
	@make -C libft

$(OBJS):
	$(CC) $(FLAGS) -c $(SRC)
	@echo "\033[32mFiller object files compiled.\033[0m"

clean:
	rm -f $(OBJS)
	@echo "\033[31mFiller object files removed.\033[0m"
	@make clean -C libft

fclean: clean
	rm -f $(NAME) $(LIBFT)
	@echo "\033[31mFiller executable and libft.a removed.\033[0m"

re: fclean all