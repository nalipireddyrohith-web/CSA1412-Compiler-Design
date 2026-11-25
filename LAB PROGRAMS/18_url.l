%{
#include <stdio.h>
%}
%%
https?://[a-zA-Z0-9.-]+(/[a-zA-Z0-9_./?=&%-]*)? { printf("Valid URL: %s\n", yytext); }
[^ \t\n]+ { printf("Invalid URL: %s\n", yytext); }
[ \t\n]+ ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter URL: ");
    yylex();
    return 0;
}
