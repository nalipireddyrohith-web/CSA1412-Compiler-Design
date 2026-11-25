%{
#include <stdio.h>
%}
%%
"++"|"--"|"=="|"!="|"<="|">="|"&&"|"||" { printf("Special Operator: %s\n", yytext); }
[+\-*/%=<>] { printf("Operator: %s\n", yytext); }
[ \t\n]+ ;
. { printf("Other: %s\n", yytext); }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter operators: ");
    yylex();
    return 0;
}
