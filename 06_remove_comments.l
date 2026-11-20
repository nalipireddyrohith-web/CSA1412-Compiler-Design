%{
#include <stdio.h>
%}

%%
"//".* ;
"/*"([^*]|\*+[^*/])*\*+"/" ;
\n { printf("\n"); }
. { printf("%s", yytext); }
%%

int yywrap(void) {}

int main() {
    printf("Enter code:\n");
    yylex();
}
