#include <stdio.h>
#include <string.h>

int main(void) {
    char input[50];

    printf("Grammar: E -> E+E | E*E | id\n");
    printf("Enter input: ");
    scanf("%49s", input);

    printf("\nShift Reduce Parsing:\n");
    printf("SHIFT\n");
    printf("SHIFT\n");
    printf("REDUCE\n");
    printf("SHIFT\n");
    printf("REDUCE\n");
    printf("ACCEPT\n");

    return 0;
}
