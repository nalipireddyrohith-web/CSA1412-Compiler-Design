%{
#include <stdio.h>
int line = 1;
%}
%%
\n { line++; printf("\n%d: ", line); }
. { ECHO; }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text:\n1: ");
    yylex();
    return 0;
}
