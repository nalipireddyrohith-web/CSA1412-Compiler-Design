%{
#include <stdio.h>
%}
%%
[6-9][0-9]{9} { printf("Valid Mobile Number: %s\n", yytext); }
[0-9]+ { printf("Invalid Mobile Number: %s\n", yytext); }
[ \t\n]+ ;
. ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter Mobile Number: ");
    yylex();
    return 0;
}
