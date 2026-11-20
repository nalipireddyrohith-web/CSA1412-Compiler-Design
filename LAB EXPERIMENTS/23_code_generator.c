#include <stdio.h>

int main() {
    char a, op, b;

    printf("Enter expression (a+b): ");
    scanf(" %c %c %c", &a, &op, &b);

    printf("\nThree Address Code:\n");
    printf("t1 = %c %c %c\n", a, op, b);

    return 0;
}