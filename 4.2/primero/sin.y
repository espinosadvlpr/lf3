%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int yylex(void);
void yyerror(char *err);
%}

%token A;
%token B;
%token ENTER;

%%
entrada:
	| entrada linea;

linea:	ENTER
	| esperado ENTER;

esperado:	R {printf("Correcto.\n");}

R:	| A R B;
%%

void yyerror(char *err){
	printf("Error: %s\n", err);
}

int main(){
	yyparse();
	return 0;
}
