#include <stdio.h>

int main(void) {
    char nt;
    printf("Enter non-terminal: ");
    scanf(" %c", &nt);
    printf("FOLLOW(%c) = $\n", nt);
    return 0;
}
