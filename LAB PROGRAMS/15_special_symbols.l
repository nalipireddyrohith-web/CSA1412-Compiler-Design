%{
#include <stdio.h>
int count = 0;
%}
%%
[!@#$%^&*()_+=\-{}\[\]:;'",.<>/?\\|] {
    count++;
    printf("Special Symbol: %s\n", yytext);
}
.|\n ;
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter text: ");
    yylex();
    printf("\nTotal Special Symbols = %d\n", count);
    return 0;
}
