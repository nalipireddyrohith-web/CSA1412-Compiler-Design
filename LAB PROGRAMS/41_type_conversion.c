#include <stdio.h>

int main(void) {
    int i;
    float f;

    printf("Enter an integer: ");
    scanf("%d", &i);

    printf("Enter a float: ");
    scanf("%f", &f);

    printf("\nType Conversion:\n");
    printf("Integer to Float: %.2f\n", (float)i);
    printf("Float to Integer: %d\n", (int)f);

    return 0;
}
