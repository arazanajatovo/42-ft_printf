# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: arazanaj <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/07/16 12:26:52 by arazanaj     #+#   ##    ##    #+#        #
#    Updated: 2019/06/22 09:33:30 by arazanaj    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = ./libft/libft.a

OBJ += ./srcs/fct_char.o
OBJ += ./srcs/fct_float.o
OBJ += ./srcs/fct_int.o
OBJ += ./srcs/fct_uint.o
OBJ += ./srcs/ft_litoa_base.o
OBJ += ./srcs/ft_strjoin_clean.o
OBJ += ./srcs/get_input.o
OBJ += ./srcs/init_pars.o
OBJ += ./srcs/init_tab.o
OBJ += ./srcs/check.o
OBJ += ./srcs/parser.o
OBJ += ./srcs/core.o

OBJ += ./libft/ft_atoi.o
OBJ += ./libft/ft_bzero.o
OBJ += ./libft/ft_isalnum.o
OBJ += ./libft/ft_isalpha.o
OBJ += ./libft/ft_isascii.o
OBJ += ./libft/ft_isascii.o
OBJ += ./libft/ft_isdigit.o
OBJ += ./libft/ft_isprint.o
OBJ += ./libft/ft_itoa.o
OBJ += ./libft/ft_memalloc.o
OBJ += ./libft/ft_memccpy.o
OBJ += ./libft/ft_memchr.o
OBJ += ./libft/ft_memcmp.o
OBJ += ./libft/ft_memcpy.o
OBJ += ./libft/ft_memdel.o
OBJ += ./libft/ft_memmove.o
OBJ += ./libft/ft_memset.o
OBJ += ./libft/ft_putchar.o
OBJ += ./libft/ft_putchar_fd.o
OBJ += ./libft/ft_putendl.o
OBJ += ./libft/ft_putendl_fd.o
OBJ += ./libft/ft_putnbr.o
OBJ += ./libft/ft_putnbr_fd.o
OBJ += ./libft/ft_putstr.o
OBJ += ./libft/ft_putstr_fd.o
OBJ += ./libft/ft_strcat.o
OBJ += ./libft/ft_strchr.o
OBJ += ./libft/ft_strclr.o
OBJ += ./libft/ft_strcmp.o
OBJ += ./libft/ft_strcpy.o
OBJ += ./libft/ft_strdel.o
OBJ += ./libft/ft_strdup.o
OBJ += ./libft/ft_strequ.o
OBJ += ./libft/ft_striter.o
OBJ += ./libft/ft_striteri.o
OBJ += ./libft/ft_strjoin.o
OBJ += ./libft/ft_strlcat.o
OBJ += ./libft/ft_strlen.o
OBJ += ./libft/ft_strmap.o
OBJ += ./libft/ft_strmapi.o
OBJ += ./libft/ft_strncat.o
OBJ += ./libft/ft_strncmp.o
OBJ += ./libft/ft_strncpy.o
OBJ += ./libft/ft_strnequ.o
OBJ += ./libft/ft_strnew.o
OBJ += ./libft/ft_strnstr.o
OBJ += ./libft/ft_strrchr.o
OBJ += ./libft/ft_strsplit.o
OBJ += ./libft/ft_strstr.o
OBJ += ./libft/ft_strsub.o
OBJ += ./libft/ft_strtrim.o
OBJ += ./libft/ft_tolower.o
OBJ += ./libft/ft_toupper.o
OBJ += ./libft/ft_lstnew.o
OBJ += ./libft/ft_lstdelone.o
OBJ += ./libft/ft_lstdel.o
OBJ += ./libft/ft_lstadd.o
OBJ += ./libft/ft_lstiter.o
OBJ += ./libft/ft_lstmap.o
OBJ += ./libft/ft_lstaddback.o
OBJ += ./libft/ft_lstsplit.o
OBJ += ./libft/ft_lstfold.o
OBJ += ./libft/ft_pow.o
OBJ += ./libft/ft_sqrt.o

HDR += ./includes/ft_printf.h

FLAGS = -Wall -Wextra -Werror -g

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	gcc $(FLAGS) -I $(HDR) -c $^ -o $@

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f $(LIBFT)

re: fclean all
