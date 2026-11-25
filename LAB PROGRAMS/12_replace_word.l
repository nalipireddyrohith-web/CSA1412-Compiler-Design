%{
#include <stdio.h>
%}
%%
hello { printf("hi"); }
.|\n { ECHO; }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text:\n");
    yylex();
    return 0;
}
