#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "include/libasm.h"

#define STRLEN(x)       printf("%s, %ld\n", x, ft_strlen(x));
#define STRCMP(x, y)    printf("%s, %s, %d\n", x, y, ft_strcmp(x, y));
#define STRDUP(s)		tmp = ft_strdup(s); printf("'%s'\n", s); free(tmp); tmp = NULL;

int main()
{
    char buffer[100];
    int i = 0;

    while (i < 100)
		buffer[i++] = 0;
    char    *tmp;

    STRLEN("YOYO");
    STRLEN("YOYOYO");
    STRLEN("OH SHIT IT WORKS");

    STRCMP("LOL", "LOL");
    STRCMP("OKAYLEGO", "OKAYLEGO");
    STRCMP("WTF", "WTV");
    STRCMP("HAHA", "HHAA");

    printf("dest = %s src = %s copy = %s\n", "lol", "shit", ft_strcpy("lol", "shit"));
    printf("dest = %s src = %s copy = %s\n", "hoi", "doei", ft_strcpy("hoi", "doei"));

    STRDUP("LOL");
    STRDUP("LONG SENTENCE");
    STRDUP("");

    ssize_t lol = ft_read(STDIN_FILENO, buffer, lol);
    printf("%s, %ld\n", buffer, lol);

    ssize_t shit = ft_write(STDOUT_FILENO, buffer, shit);
    printf("%s, %ld\n", buffer, shit);
}

// https://sonictk.github.io/asm_tutorial/
// https://blog.tomzhao.me/?p=115