#include <stdio.h>
#include <string.h>

int main() {
    char line[200];
    int count = 0;

    printf("Enter C code lines (type END to finish):\n");

    while (1) {
        fgets(line, sizeof(line), stdin);

        if (strncmp(line, "END", 3) == 0)
            break;

        if (strstr(line, "//") != NULL)
            count++;

        if (strstr(line, "/*") != NULL)
            count++;
    }

    printf("\nNumber of comments = %d\n", count);
    return 0;
}