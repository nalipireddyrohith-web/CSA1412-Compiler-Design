%{
#include <stdio.h>
%}
%%
[A-Z] { printf("%c", yytext[0] + ('a' - 'A')); }
.|\n { ECHO; }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter uppercase text: ");
    yylex();
    printf("\n");
    return 0;
}
