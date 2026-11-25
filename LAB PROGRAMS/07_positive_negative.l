%{
#include <stdio.h>
%}
%%
-[0-9]+ { printf("%s is Negative\n", yytext); }
[0-9]+ { printf("%s is Positive\n", yytext); }
[ \t\n]+ ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter numbers: ");
    yylex();
    return 0;
}
