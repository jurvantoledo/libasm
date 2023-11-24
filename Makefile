NAME		= libasm.a
CC			= gcc
CFLAGS		= 
NASM		= nasm
NASM_FLAGS	= elf64

SRC			=	src/ft_strlen.s \
				src/ft_strcmp.s \
				src/ft_strcpy.s \
				src/ft_strdup.s \
				src/ft_read.s \
				src/ft_write.s
			
OBJ			= $(subst src, obj, $(SRC:.s=.o))

all: dirs $(NAME)

dirs:
	mkdir -p obj

obj/%.o: src/%.s
	$(NASM) -f $(NASM_FLAGS) -o $@ $<


$(NAME): $(OBJ)
		ar rcs $(NAME) $(OBJ)

clean:
	rm -rf obj

fclean: clean
	rm -rf $(NAME)

re:	fclean dirs $(NAME)

test: dirs $(NAME)
	  $(CC) $(CFLAGS) -c main.c -o obj/main.o
	  $(CC) -o main -no-pie -I include obj/main.o $(NAME)
	  $(RM) obj/main.o
	  @echo "--------------------------------"
	  @./main
	  @echo "--------------------------------"
	  @rm -rf main obj $(NAME)

.PHONY: all clean fclean re test
