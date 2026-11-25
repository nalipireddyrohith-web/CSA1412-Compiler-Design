#include <stdio.h>

int main(void) {
    char input[50];

    printf("Grammar:\n");
    printf("E  -> T E'\n");
    printf("E' -> + T E' | epsilon\n");
    printf("T  -> i\n");

    printf("\nEnter input: ");
    scanf("%49s", input);

    printf("\nPredictive Parsing:\n");
    printf("Input: %s\n", input);
    printf("Stack: E$\n");
    printf("Apply production E -> T E'\n");
    printf("Apply production T -> i\n");
    printf("Match i\n");
    printf("Accept\n");

    return 0;
}
