#include <stdio.h>

int main(void) {
    int a, b;

    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);

    printf("\nBottom-Up Evaluation using S-Attribute\n");
    printf("E -> E + T\n");
    printf("T.val = %d\n", b);
    printf("E.val = %d + %d = %d\n", a, b, a + b);

    return 0;
}
