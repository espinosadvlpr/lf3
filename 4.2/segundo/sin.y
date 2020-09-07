%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex(void);
void yyerror(char *s);
%}

%token A; 
%token B; 
%token C; 
%token D; 
%token ENTER;

%%
entrada: 
	| entrada linea;

linea:	ENTER
	| exp ENTER;

exp: 	R	{printf("Sintaxis correcta\n");}

S: 	B C | B S C	;

R: 	A S D | A R D ; 

%%

void yyerror(char *s){
	printf("Error: %s\n", s);
	exit(0);
}

int main(){
	yyparse();
	return 0;
}