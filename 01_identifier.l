%{
#include <stdio.h>
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]*$ { printf("Valid Identifier\n"); }
.* { printf("Invalid Identifier\n"); }
%%

int yywrap(void) {}

int main() {
    printf("Enter Identifier: ");
    yylex();
}
