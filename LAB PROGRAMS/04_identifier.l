%{
#include <stdio.h>
%}
%%
^[a-zA-Z_][a-zA-Z0-9_]*\n { printf("Valid Identifier\n"); }
^[a-zA-Z_][a-zA-Z0-9_]* { printf("Valid Identifier\n"); }
.* { printf("Invalid Identifier\n"); }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter Identifier: ");
    yylex();
    return 0;
}
