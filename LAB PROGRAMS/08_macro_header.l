%{
#include <stdio.h>
%}
%%
^#[ \t]*define[ \t]+[a-zA-Z_][a-zA-Z0-9_]*.* { printf("Macro: %s\n", yytext); }
^#[ \t]*include[ \t]*<[^>]+> { printf("Header File: %s\n", yytext); }
^#[ \t]*include[ \t]*"[^"]+" { printf("Header File: %s\n", yytext); }
.* { printf("Other: %s\n", yytext); }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter C code:\n");
    yylex();
    return 0;
}
