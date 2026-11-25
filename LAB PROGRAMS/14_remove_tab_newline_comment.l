%{
#include <stdio.h>
%}
%%
"//".* ;
"/*"([^*]|\*+[^*/])*\*+"/" ;
[ \t\n]+ ;
. { ECHO; }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text:\n");
    yylex();
    printf("\n");
    return 0;
}
