#include <stdio.h>

int main() {
    char nonterminal;
    printf("Enter non-terminal: ");
    scanf(" %c", &nonterminal);
    printf("FOLLOW(%c) = $\n", nonterminal);
    return 0;
}