%{
#include <stdio.h>
%}
%%
https?://[a-zA-Z0-9.-]+(/[a-zA-Z0-9_./?=&%-]*)? { printf("Valid URL: %s\n", yytext); }
.|\n ;
%%
int yywrap(void) {}
int main() {
    printf("Enter URL: ");
    yylex();
}