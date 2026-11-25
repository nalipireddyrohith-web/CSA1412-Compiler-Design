%{
#include <stdio.h>
%}
%%
[0-9]+ { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[+\-*/%=<>] { printf("OPERATOR: %s\n", yytext); }
[;(),{}] { printf("SPECIAL SYMBOL: %s\n", yytext); }
[ \t\n]+ ;
. { printf("UNKNOWN: %s\n", yytext); }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter tokens:\n");
    yylex();
    return 0;
}
