%{
#include <stdio.h>
%}
%%
[0-9] { printf("Digit: %s\n", yytext); }
[^0-9\n]+ { printf("Not a digit: %s\n", yytext); }
\n ;
%%
int yywrap(void) {}
int main() {
    printf("Enter digits: ");
    yylex();
}