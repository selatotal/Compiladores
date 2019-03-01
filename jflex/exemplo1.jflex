import java.util.*;

%% 
%class Calcula  /* Nome da classe a ser gerada */
%standalone     /* Cria o programa principal */

/* Declaracao de codigo do usuario (ex: atributos e metodos) */
%{
	private int numLines;
	private int numChars;
	public int getNumLines(){		
		return numLines;	
	}

	public int getNumChars(){
		return numChars;
	}

	public boolean getEOF(){
		return this.zzAtEOF;
	}
%}

/* Codigo a ser colocado no construtor da classe */
%init{
	this.numLines = 0;
	this.numChars = 0;
%init}

/* Declaração de "MACROS" */
NEWLINE = \n | \r | \r\n

/* Declaracao de Regras */

%%

{NEWLINE}	{ this.numLines++;
			  this.numChars+=yytext().length(); }
.		    { this.numChars+=yytext().length(); }

