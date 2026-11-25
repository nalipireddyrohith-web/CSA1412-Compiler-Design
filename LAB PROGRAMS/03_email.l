%{
#include <stdio.h>
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} { printf("Valid Email: %s\n", yytext); }
[^ \t\n]+ { printf("Invalid Email: %s\n", yytext); }
[ \t\n]+ ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter Email ID: ");
    yylex();
    return 0;
}
