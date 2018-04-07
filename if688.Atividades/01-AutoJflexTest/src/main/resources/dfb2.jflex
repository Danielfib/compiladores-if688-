package atividade1;

%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras léxicas abaixo */
//PADROES NOMEADOS:
whitespace			= [ \n\t\r\f]
letter				= [A-Za-z]
digit				= [0-9]
integerLiteral		= [1-9]{digit}*|0
alphanumeric		= {letter}|{digit}
id					= ({letter} | [_])({alphanumeric} | [_])*
commentLine			= (\/\/(.)*\n)
commentBlock		= (\/\/*(.|{whitespace})*\*\/)

%%

//REGRAS LEXICAS:    
"boolean"					{System.out.println("Token boolean"); }
"class"						{System.out.println("Token class"); }
"public"					{System.out.println("Token public"); }
"extends"					{System.out.println("Token extends"); }
"static"					{System.out.println("Token static"); }
"void"						{System.out.println("Token void"); }
"main"						{System.out.println("Token main"); }
"String"					{System.out.println("Token String"); }
"int"						{System.out.println("Token int"); }
"while"						{System.out.println("Token while"); }
"if"						{System.out.println("Token if"); }
"else"						{System.out.println("Token else"); }
"return"					{System.out.println("Token return"); }
"length"					{System.out.println("Token length"); }
"false"						{System.out.println("Token true"); }
"this"						{System.out.println("Token this"); }
"new"						{System.out.println("Token new"); }
"System.out.println"		{System.out.println("Token System.out.println"); }


"&&"		{System.out.println("Token &&"); }
"<"			{System.out.println("Token <"); }
"=="		{System.out.println("Token =="); }
"!="		{System.out.println("Token !="); }
"+"			{System.out.println("Token +"); }
"-"			{System.out.println("Token -"); }
"*"			{System.out.println("Token *"); }
"!"			{System.out.println("Token !"); }


";"		{System.out.println("Token ;"); }
","		{System.out.println("Token ,"); }
"."		{System.out.println("Token ."); }
"="		{System.out.println("Token ="); }
"("		{System.out.println("Token ("); }
")"		{System.out.println("Token )"); }
"["		{System.out.println("Token ["); }
"]"		{System.out.println("Token ]"); }
"{"		{System.out.println("Token {"); }
"}"		{System.out.println("Token }"); }


{whitespace}		{ /*ignorar*/ }
{letter}			{ System.out.println("Token letter ("+yytext()+")"); }
{digit}				{ System.out.println("Token digit ("+yytext()+")"); }
{integerLiteral}	{ System.out.println("Token integerLiteral ("+yytext()+")"); }
{id}				{ System.out.println("Token id ("+yytext()+")"); }
{commentLine}		{ /*ignorar*/ }
{commentBlock}		{ /*ignorar*/ }

/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }
