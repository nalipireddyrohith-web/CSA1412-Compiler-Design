%{
#include <stdio.h>
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} { printf("Valid Email: %s\n", yytext); }
[^ \t\n]+ { printf("Invalid Email: %s\n", yytext); }
[ \t\n]+ ;
%%
int yywrap(void) {}
int main() {
    printf("Enter Email: ");
    yylex();
}