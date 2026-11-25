%{
#include <stdio.h>
%}
%%
"//".* ;
"/*"([^*]|\*+[^*/])*\*+"/" ;
\n { putchar('\n'); }
. { ECHO; }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter code:\n");
    yylex();
    return 0;
}
