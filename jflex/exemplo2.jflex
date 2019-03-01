%% 
%class Comandos  
%standalone 

%%
^do$	{ System.out.println("Reconheceu!");} 
while|for	{ System.out.println("Comando: " 
					+ yytext()); 
				}
.		{}
\n		{}
