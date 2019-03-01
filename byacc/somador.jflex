import java.io.*;

%%

%byaccj

%{

	// Armazena uma referencia para o parser
	private Parser yyparser;

	// Construtor recebendo o parser como parametro adicional
	public Yylex(Reader r, Parser yyparser){
		this(r);
		this.yyparser = yyparser;
	}	

%}

NUMBER = [0-9]+
NL = \n | \r | \r\n

%%

"+"	{ return Parser.MAIS; }
";" { return Parser.PONTO_E_VIRGULA; }

/* New Line */
{NL}	{  }

/* Numero */
{NUMBER}	{ 
				yyparser.yylval = new ParserVal(Integer.parseInt(yytext())); 
				return Parser.NUMBER;
			}