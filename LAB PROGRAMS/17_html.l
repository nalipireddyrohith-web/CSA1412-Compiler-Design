%{
#include <stdio.h>
%}
%%
"<html>"|"</html>"|"<head>"|"</head>"|"<body>"|"</body>"|"<h1>"|"</h1>"|"<p>"|"</p>" { printf("HTML Tag: %s\n", yytext); }
"<[^>]+>" { printf("HTML Tag: %s\n", yytext); }
[ \t\n]+ ;
. { printf("Text: %s\n", yytext); }
%%
int yywrap(void) { return 1; }
int main(void) {
    printf("Enter HTML code:\n");
    yylex();
    return 0;
}
