#include <stdio.h>
#include <ctype.h>

int main(void) {
    char input[100];
    int i = 0;

    printf("Enter tokens: ");
    fgets(input, sizeof(input), stdin);

    while (input[i] != '\0') {
        if (isalpha((unsigned char)input[i]))
            printf("%c -> Identifier\n", input[i]);
        else if (isdigit((unsigned char)input[i]))
            printf("%c -> Number\n", input[i]);
        else if (input[i] == '+' || input[i] == '-' ||
                 input[i] == '*' || input[i] == '/')
            printf("%c -> Operator\n", input[i]);
        else if (input[i] != ' ' && input[i] != '\n')
            printf("%c -> Special Symbol\n", input[i]);
        i++;
    }

    return 0;
}
