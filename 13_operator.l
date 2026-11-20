%{
#include <stdio.h>
%}

%%
"++"|"--"|"=="|"!="|"<="|">="|"&&"|"||" { printf("Special Operator: %s\n", yytext); }
[+\-*/%=<>] { printf("Operator: %s\n", yytext); }
[ \t\n]+ ;
. { printf("Other: %s\n", yytext); }
%%

int yywrap(void) {}

int main() {
    printf("Enter operators: ");
    yylex();
}
