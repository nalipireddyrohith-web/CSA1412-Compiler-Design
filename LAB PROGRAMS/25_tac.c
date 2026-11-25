#include <stdio.h>

int main(void) {
    char a, b, c;

    printf("Enter expression (a+b*c): ");
    scanf(" %c + %c * %c", &a, &b, &c);

    printf("\nThree Address Code:\n");
    printf("t1 = %c * %c\n", b, c);
    printf("t2 = %c + t1\n", a);

    return 0;
}
