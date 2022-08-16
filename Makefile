##
## Malek PROJECT, 2022
## MinilibC
## File description:
## Makefile
##

NASM    =    nasm

SRC    =    src/my_strlen.asm 		\
        	src/my_strchr.asm 		\
	       	src/my_memset.asm 		\
        	src/my_strrchr.asm 		\
	       	src/my_strcmp.asm 		\
	       	src/my_strncmp.asm 		\
	       	src/my_memcpy.asm 		\
	       	src/my_memmove.asm 		\
	       	src/my_strcasecmp.asm 	\
	       	src/my_strstr.asm  		\
	       	src/my_strpbrk.asm		\
	       	src/my_strcspn.asm 		\
			src/my_index.asm		\
			src/my_rindex.asm		\
			src/my_syscall.asm		\

OBJ        =    $(SRC:.asm=.o)

%.o : %.asm
	$(NASM) $(ASFLAGS) $< -o $@

NAME        =    libasm.so

ASMFLAGS    =     -fPIC -shared

ASFLAGS    =    -f elf64        

all:    $(NAME)

$(NAME):    $(OBJ)
	$(LD) -o $(NAME) $(ASMFLAGS) $(OBJ)
clean:
	$(RM) $(OBJ)

fclean:    clean
	$(RM) $(NAME)

re:    fclean all

.PHONY:    all clean fclean re