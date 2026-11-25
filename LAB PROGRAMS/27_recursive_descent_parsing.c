#include <stdio.h>

char input[100];
int pos = 0;

void E(void);
void T(void);
void F(void);

void E(void) {
    T();
    while (input[pos] == '+') {
        pos++;
        T();
    }
}

void T(void) {
    F();
    while (input[pos] == '*') {
        pos++;
        F();
    }
}

void F(void) {
    if (input[pos] == 'i') {
        pos++;
    } else if (input[pos] == '(') {
        pos++;
        E();
        if (input[pos] == ')')
            pos++;
    }
}

int main(void) {
    printf("Grammar:\n");
    printf("E -> T+E | T\n");
    printf("T -> F*T | F\n");
    printf("F -> i | (E)\n");

    printf("\nEnter string using i: ");
    scanf("%99s", input);

    E();

    if (input[pos] == '\0')
        printf("String Accepted\n");
    else
        printf("String Rejected\n");

    return 0;
}
