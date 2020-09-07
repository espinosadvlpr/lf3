%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex(void);
extern char *yytext;
void yyerror(char *s);
#define YYSTYPE char const *
%}

%token ART
%token PRE
%token ADJ
%token VER
%token SUS
%token LIN

%%

input: 
	| input line;

line:	LIN
	|oracion LIN	{printf("%s\n", "Frase correcta");}

oracion: sujeto verbo complemento;

sujeto: ART SUS ADJ PRE sujeto;
	| ART SUS PRE sujeto;
	| ART SUS ADJ;
	| ART SUS;
	| SUS;

verbo:	VER;

complemento: PRE sujeto;
	| ADJ;
%%

void yyerror(char *s){
	printf("Error: %s\n", s);
}

int main(int argc, char **argv){
	yyparse();
	return 0;
}
