#include <stdio.h>

int main() {
    printf("Annotated Parser Tree\n\n");

    printf("             E\n");
    printf("           /   \\\n");
    printf("          E     +\n");
    printf("          |       \\\n");
    printf("          T        T\n");
    printf("          |        |\n");
    printf("          i        i\n\n");

    printf("Annotations:\n");
    printf("E.val = T.val + T.val\n");
    printf("T.val = i.val\n");

    return 0;
}