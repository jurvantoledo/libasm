#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include "include/libasm.h"

#define STRLEN(x)       printf("%s, %ld\n", x, ft_strlen(x));
#define STRCMP(x, y)    printf("%s, %s, %d\n", x, y, ft_strcmp(x, y));

int main()
{
    STRLEN("YOYO");
    STRLEN("YOYOYO");
    STRLEN("OH SHIT IT WORKS");

    STRCMP("LOL", "LOL");
}

// https://sonictk.github.io/asm_tutorial/
// https://blog.tomzhao.me/?p=115