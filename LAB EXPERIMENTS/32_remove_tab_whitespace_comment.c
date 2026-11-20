#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char line[300];

    printf("Enter text (type END to finish):\n");

    while (1) {
        fgets(line, sizeof(line), stdin);

        if (strncmp(line, "END", 3) == 0)
            break;

        char *comment = strstr(line, "//");
        if (comment != NULL)
            *comment = '\0';

        for (int i = 0; line[i] != '\0'; i++) {
            if (!isspace((unsigned char)line[i]))
                putchar(line[i]);
        }
    }

    printf("\n");
    return 0;
}