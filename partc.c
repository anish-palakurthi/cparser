#include <stdio.h>
#include <string.h>

int __attribute__((noinline)) funcone(int foo)
{
        printf("funcone called!\n");
        return 378+foo;
}

int __attribute__((noinline)) functwo(int bar)
{
        printf("functwo called!\n");
        return 0x378+bar;
}

int __attribute__((noinline)) functhree(int binky)
{
        printf("functhree called!\n");
        return 0x030708+binky;
}

int __attribute__((noinline)) funcfour(int baz)
{
        printf("funcfour called!\n");
        return baz;
}

int __attribute__((noinline)) funcfive(int outofnames)
{
        printf("funcfive called!\n");
        return outofnames + 5;
}

int main(int argc, char *argv[])
{
        int (*fp)(int);
        if (argc == 1)
                fp = &funcone;
        else if (argc == 2)
                fp = functwo;
        else
                fp = (int (*)(int))functhree;

        (*fp)(1337);
        funcfour(7);
        (*(int (*)(int))funcfive)(5);
        return 0;
}
