%{
#include <string.h>
#include "sin.tab.h"
%}

%%

[aA]	{return (A);}
[bB]	{return (B);}
[\n]	{return (ENTER);}
.	    {printf("Error: %s\n", yytext);}
%%
