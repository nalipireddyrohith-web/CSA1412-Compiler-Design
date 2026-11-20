%{
#include <stdio.h>
%}

%%
"//".* ;
"/*"([^*]|\*+[^*/])*\*+"/" ;
[ \t\n]+ ;
. { printf("%s", yytext); }
%%

int yywrap(void) {}

int main() {
    printf("Enter text:\n");
    yylex();
}
