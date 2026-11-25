#include <stdio.h>

int main(void) {
    int a, b;

    printf("Enter two numbers: ");
    scanf("%d %d", &a, &b);

    printf("\nS-Attributed / L-Attributed Style Evaluation\n");
    printf("E -> E + T\n");
    printf("E.val = E.val + T.val\n");
    printf("T.val = %d\n", b);
    printf("Final value = %d\n", a + b);

    return 0;
}
