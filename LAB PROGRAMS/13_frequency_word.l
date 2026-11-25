%{
#include <stdio.h>
int count = 0;
%}
%%
hello { count++; }
.|\n ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text:\n");
    yylex();
    printf("\nFrequency of hello = %d\n", count);
    return 0;
}
