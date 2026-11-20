%{
#include <stdio.h>
int line = 1;
%}
%%
\n { line++; printf("\n%d: ", line); }
. { printf("%s", yytext); }
%%
int yywrap(void) {}
int main() {
    printf("Enter text:\n1: ");
    yylex();
}