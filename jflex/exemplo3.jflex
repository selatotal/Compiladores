%% 
%class BuscaString
%standalone

%{
	public void imprimeString(String texto){
		System.out.println("String lida: " + texto);
	}
%}

/* Declaracao de Regras */
%%
\".*\"	{ imprimeString(yytext()); }
\n|\r 	{}
.	{}

