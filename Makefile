CC = gcc
CFLAGS = -Wall -Werror -Wextra

SRC = src/ft_strlen.s
OBJ = $(SRC:.s=.o)

NA = nasm
NA_FLAGS = -f macho64
NAME = libasm.a

%.o: %.s
	$(NA) $(NA_FLAGS) $<

all:
	$(NAME)

$(NAME): $(OBJ)
			ar rcs $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean:
	rm -rf $(NAME) $(OBJ)

re:	fclean $(NAME)

.PHONY: all clean fclean re