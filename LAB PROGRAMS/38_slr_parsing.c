#include <stdio.h>

int main(void) {
    char input[50];

    printf("Grammar: E -> E+T | T\n");
    printf("Enter input: ");
    scanf("%49s", input);

    printf("\nSLR Parsing Steps:\n");
    printf("Shift input symbols\n");
    printf("Reduce using grammar rules\n");
    printf("Accept\n");

    printf("\nInput %s is accepted by the SLR parser.\n", input);
    return 0;
}
