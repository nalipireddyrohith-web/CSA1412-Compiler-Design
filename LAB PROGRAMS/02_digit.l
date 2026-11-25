%{
#include <stdio.h>
%}
%%
[0-9] { printf("Digit: %s\n", yytext); }
[^0-9\n] { printf("Not a digit: %s\n", yytext); }
\n ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter a digit: ");
    yylex();
    return 0;
}
