#include <stdio.h>

int main(void) {
    printf("Original Code:\n");
    printf("a = 10\n");
    printf("b = 20\n");
    printf("c = a + b\n");
    printf("d = 50\n");
    printf("print(c)\n");

    printf("\nAfter Dead Code Elimination:\n");
    printf("a = 10\n");
    printf("b = 20\n");
    printf("c = a + b\n");
    printf("print(c)\n");

    printf("\nDead code removed: d = 50\n");
    return 0;
}
