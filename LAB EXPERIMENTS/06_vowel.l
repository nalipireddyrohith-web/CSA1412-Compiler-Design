%{
#include <stdio.h>
%}
%%
[AEIOUaeiou] { printf("%s is a Vowel\n", yytext); }
[A-Za-z] { printf("%s is a Consonant\n", yytext); }
[ \t\n]+ ;
%%
int yywrap(void) {}
int main() {
    printf("Enter characters: ");
    yylex();
}