%{
#include <stdio.h>
int upper = 0, lower = 0;
%}
%%
[A-Z] { upper++; }
[a-z] { lower++; }
.|\n ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text: ");
    yylex();
    printf("\nUppercase = %d\n", upper);
    printf("Lowercase = %d\n", lower);
    return 0;
}
