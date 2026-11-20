%{
#include <stdio.h>
%}
%%
hello { printf("hi"); }
.|\n { printf("%s", yytext); }
%%
int yywrap(void) {}
int main() {
    printf("Enter text:\n");
    yylex();
}