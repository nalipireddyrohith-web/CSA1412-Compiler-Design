%{
#include <stdio.h>
%}
%%
[6-9][0-9]{9} { printf("Valid Mobile Number: %s\n", yytext); }
[0-9]+ { printf("Invalid Mobile Number: %s\n", yytext); }
[ \t\n]+ ;
. ;
%%
int yywrap(void) {}
int main() {
    printf("Enter Mobile Number: ");
    yylex();
}