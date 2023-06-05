# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpoussie <mpoussie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/08 17:19:09 by mpoussie          #+#    #+#              #
#    Updated: 2023/06/03 21:43:42 by mpoussie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	so_long

CC				= gcc
RM				= rm -rf
CFLAGS			= -Wall -Wextra -Werror

SRCS    		=	core/main.c \
					core/map/map.c \
					core/map/map_utils.c \
					core/map/map_control.c \
					core/player/player_utils.c \
					core/player/player.c \
					

all: ${NAME}

%.o: %.c
	$(CC) -Wall -Wextra -Werror -I/usr/include -Imlx_linux -O3 -c $< -o $@

$(NAME): $(SRCS)
	$(CC) $(SRCS) ./include/libft/libft.a ./minilibx-linux/libmlx_Linux.a -g3 -lXext -lX11 -lm -lz -o $(NAME)
# -fsanitize=address
clean:
				$(RM) $(NAME)
fclean:			clean
				$(RM) $(NAME)	
re: fclean ${NAME}

.PHONY: all, clean, fclean, re