%{
#include <stdio.h>
%}
%%
"<html>"|"</html>" { printf("HTML Tag: %s\n", yytext); }
"<head>"|"</head>" { printf("HTML Tag: %s\n", yytext); }
"<body>"|"</body>" { printf("HTML Tag: %s\n", yytext); }
"<h1>"|"</h1>" { printf("HTML Tag: %s\n", yytext); }
"<p>"|"</p>" { printf("HTML Tag: %s\n", yytext); }
"<[^>]+>" { printf("HTML Tag: %s\n", yytext); }
[ \t\n]+ ;
. { printf("Text: %s\n", yytext); }
%%
int yywrap(void) {}
int main() {
    printf("Enter HTML code:\n");
    yylex();
}