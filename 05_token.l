%{
#include <stdio.h>
%}
%%
[0-9]+ { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[+\-*/=] { printf("OPERATOR: %s\n", yytext); }
[;(),] { printf("SPECIAL SYMBOL: %s\n", yytext); }
[ \t\n]+ ;
. { printf("UNKNOWN: %s\n", yytext); }
%%
int yywrap(void) {}
int main() {
    printf("Enter Tokens:\n");
    yylex();
}