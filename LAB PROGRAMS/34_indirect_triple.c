#include <stdio.h>

int main(void) {
    printf("Indirect Triple Representation\n\n");
    printf("Pointer\tInstruction\n");
    printf("P0\t(+, a, b)\n");
    printf("P1\t(*, P0, c)\n");
    printf("P2\t(=, P1, d)\n");

    return 0;
}
