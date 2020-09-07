%{
#include <stdio.h>
#include <stdlib.h>
#include "sin.tab.h"
%}

%%
[ \t]										;
"el"|"la"|"los"|"las"                                                        	{return (ART);}
"ante"|"bajo"|"cabe"|"contra"|"desde"						                    {return (PRE);} 
"tiene"|"hace"|"dice"|"conoce"|"llora"|"es"|"son"                               {return (VER);}
"afortunado"|"angosto"|"estupendo"|"pequeño"|"extremo"|"popular" 		        {return (ADJ);}
[A-Za-z]+										                                {return (SUS);}
"\n"											                                {return (LIN);}
.	 											                                {printf("Error: %s\n", yytext);}
%%

