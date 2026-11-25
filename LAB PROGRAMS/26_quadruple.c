#include <stdio.h>

int main(void) {
    char a, b, c;

    printf("Enter expression (a+b*c): ");
    scanf(" %c + %c * %c", &a, &b, &c);

    printf("\nQuadruple Representation:\n");
    printf("Op\tArg1\tArg2\tResult\n");
    printf("*\t%c\t%c\tt1\n", b, c);
    printf("+\t%c\tt1\tt2\n", a);

    return 0;
}
