%{
#include <stdio.h>
int count = 0;
%}

%%
hello { count++; }
.|\n ;
%%

int yywrap(void) {}

int main() {
    printf("Enter text:\n");
    yylex();
    printf("\nFrequency of hello = %d\n", count);
}
