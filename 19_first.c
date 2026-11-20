#include <stdio.h>
#include <string.h>

int main() {
    char grammar[100];
    printf("Enter production (example: E->a): ");
    scanf("%99s", grammar);
    printf("FIRST(%c) = %c\n", grammar[0], grammar[3]);
    return 0;
}