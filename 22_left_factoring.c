#include <stdio.h>

int main() {
    char nt, prefix[50], beta[50], gamma[50];

    printf("Enter non-terminal: ");
    scanf(" %c", &nt);
    printf("Enter common prefix: ");
    scanf("%49s", prefix);
    printf("Enter first suffix: ");
    scanf("%49s", beta);
    printf("Enter second suffix: ");
    scanf("%49s", gamma);

    printf("\nOriginal Grammar:\n");
    printf("%c -> %s%s | %s%s\n", nt, prefix, beta, prefix, gamma);

    printf("\nAfter Left Factoring:\n");
    printf("%c -> %s%c'\n", nt, prefix, nt);
    printf("%c' -> %s | %s\n", nt, beta, gamma);

    return 0;
}