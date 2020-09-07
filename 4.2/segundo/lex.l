%{
#include <string.h>
#include "sin.tab.h"
%}

%%
[aA]		{return (A);}
[bB]		{return (B);}
[cC]		{return (C);}
[dD]		{return (D);}
"\n"		{return (ENTER);}
.			{printf("Error lexico: %s\n", yytext);}
%%

