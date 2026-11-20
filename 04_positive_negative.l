%{
#include <stdio.h>
%}

%%
-[0-9]+ { printf("%s is Negative\n", yytext); }
[0-9]+ { printf("%s is Positive\n", yytext); }
[ \t\n]+ ;
%%

int yywrap(void) {}

int main() {
    printf("Enter numbers: ");
    yylex();
}
