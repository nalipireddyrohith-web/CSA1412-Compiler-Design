#include <stdio.h>

int main(void) {
    printf("Original Three Address Code:\n");
    printf("t1 = a + b\n");
    printf("t2 = a + b\n");
    printf("t3 = t1 * c\n");
    printf("t4 = t2 * d\n");

    printf("\nAfter Common Subexpression Elimination:\n");
    printf("t1 = a + b\n");
    printf("t2 = t1 * c\n");
    printf("t3 = t1 * d\n");

    return 0;
}
