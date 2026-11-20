#include <stdio.h>

int main() {
    char nt, alpha[50], beta[50];

    printf("Enter non-terminal: ");
    scanf(" %c", &nt);
    printf("Enter alpha: ");
    scanf("%49s", alpha);
    printf("Enter beta: ");
    scanf("%49s", beta);

    printf("\nOriginal Grammar:\n");
    printf("%c -> %c%s | %s\n", nt, nt, alpha, beta);

    printf("\nAfter removing left recursion:\n");
    printf("%c -> %s%c'\n", nt, beta, nt);
    printf("%c' -> %s%c' | e\n", nt, alpha, nt);

    return 0;
}