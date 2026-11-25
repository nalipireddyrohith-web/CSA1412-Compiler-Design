#include <stdio.h>
#include <string.h>

int main(void) {
    char production[100];
    printf("Enter production (example: E->a): ");
    scanf("%99s", production);

    printf("FIRST(%c) = ", production[0]);
    if (production[3] != '\0')
        printf("%c\n", production[3]);
    else
        printf("epsilon\n");

    return 0;
}
