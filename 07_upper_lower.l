%{
#include <stdio.h>
int upper = 0, lower = 0;
%}

%%
[A-Z] { upper++; }
[a-z] { lower++; }
. ;
%%

int yywrap(void) {}

int main() {
    printf("Enter text: ");
    yylex();
    printf("\nUppercase = %d\n", upper);
    printf("Lowercase = %d\n", lower);
}
