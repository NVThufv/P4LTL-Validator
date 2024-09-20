package edu.tsinghua.ss.thufv.specLang.parse;

import com.github.jhoenicke.javacup.runtime.*;
import java.math.BigInteger;
import java.util.*;

%%

%class P4LTLLexer
%unicode
%implements com.github.jhoenicke.javacup.runtime.Scanner
%type com.github.jhoenicke.javacup.runtime.Symbol
%function next_token
%line
%column
%public

%state PREDICATE

%{
  private Symbol symbol(int type) {
    return new Symbol(type, yyline, yycolumn);
  }
  private Symbol symbol(int type, Object value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
	private Symbol symbol(int type, String value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
  
      private Symbol symbol(int type, int value) {
    return new Symbol(type, yyline, yycolumn, value);
  }
  private void echoToken(String text)
  {
  	 // System.out.println("Token: " + text);
  }
  
  int parens = 0;
%} 

LineTerminator = \r|\n|\r\n
ws     = {LineTerminator} | [ \t\f]

Identifier =  [_a-zA-Z~][a-zA-Z0-9_~#\.]*
Header = [_a-zA-Z~][a-zA-Z0-9_~#\.]*
DecIntegerLiteral = 0 | [1-9][0-9]*
BvIntegerLiteral = {DecIntegerLiteral} "bv" {DecIntegerLiteral}
HexIntegerLiteral = [0][xX][0-9a-fA-F]+
Digit = [0-9]
IPInt = 0|1{Digit}?{Digit}?|2[0-4]?{Digit}?|25[0-5]?|[3-9]{Digit}?
IP = ({IPInt}\.){3}({IPInt})

%%

/**
 * LEXICAL RULES:
 */

<YYINITIAL>{ 
	"("					{echoToken(yytext()); return symbol(P4LTLSymbols.LPAR); }
	")"					{echoToken(yytext()); return symbol(P4LTLSymbols.RPAR); }
	
	"AP"				{echoToken(yytext()); yybegin(PREDICATE); return symbol(P4LTLSymbols.AP); }
	
	"[]"				{echoToken(yytext()); return symbol(P4LTLSymbols.ALWAYS); }
	"<>"				{echoToken(yytext()); return symbol(P4LTLSymbols.EVENTUALLY); }
	"U"					{echoToken(yytext()); return symbol(P4LTLSymbols.UNTIL); }
	"W"					{echoToken(yytext()); return symbol(P4LTLSymbols.WEAKUNTIL); }
	"R"					{echoToken(yytext()); return symbol(P4LTLSymbols.RELEASE); }
	"&&"				{echoToken(yytext()); return symbol(P4LTLSymbols.AND); }
	"||"				{echoToken(yytext()); return symbol(P4LTLSymbols.OR); }
	"==>"				{echoToken(yytext()); return symbol(P4LTLSymbols.IMPLIES); }
	"X"					{echoToken(yytext()); return symbol(P4LTLSymbols.NEXT); }
	"!"					{echoToken(yytext()); return symbol(P4LTLSymbols.NEG); }

	{ws}    			{/* ignore */ }
	
	{Identifier}    	{echoToken(yytext()); return symbol(P4LTLSymbols.NAME, yytext()); }
 }
 <PREDICATE>{
  	"("						{echoToken(yytext()); parens++; return symbol(P4LTLSymbols.LPAR); }
  	"=="					{echoToken(yytext()); return symbol(P4LTLSymbols.EQ); }
  	"<="					{echoToken(yytext()); return symbol(P4LTLSymbols.LEQ); }
  	">="					{echoToken(yytext()); return symbol(P4LTLSymbols.GEQ); }
  	">"						{echoToken(yytext()); return symbol(P4LTLSymbols.GT); }
  	"<"						{echoToken(yytext()); return symbol(P4LTLSymbols.LT); }
  	"!="					{echoToken(yytext()); return symbol(P4LTLSymbols.NEQ); }
  	")"						{echoToken(yytext()); parens--; if(parens == 0) { yybegin(YYINITIAL); } return symbol(P4LTLSymbols.RPAR); }
  	","						{echoToken(yytext()); return symbol(P4LTLSymbols.COMMA); }
  	"old"					{echoToken(yytext()); return symbol(P4LTLSymbols.OLD);}
  	"Key"					{echoToken(yytext()); return symbol(P4LTLSymbols.KEY); }
	"+"						{echoToken(yytext()); return symbol(P4LTLSymbols.PLUS); }
	"-"						{echoToken(yytext()); return symbol(P4LTLSymbols.MINUS); }
	"!"						{echoToken(yytext()); return symbol(P4LTLSymbols.NEG); }
	"&&"					{echoToken(yytext()); return symbol(P4LTLSymbols.AND); }
	"||"					{echoToken(yytext()); return symbol(P4LTLSymbols.OR); }
	"==>"					{echoToken(yytext()); return symbol(P4LTLSymbols.IMPLIES); }
 	"true"					{echoToken(yytext()); return symbol(P4LTLSymbols.TRUE); }
	"false"					{echoToken(yytext()); return symbol(P4LTLSymbols.FALSE); }
	
 	"fwd"					{echoToken(yytext()); return symbol(P4LTLSymbols.FWD); }
 	"drop"					{echoToken(yytext()); return symbol(P4LTLSymbols.DROP); }
 	"valid"					{echoToken(yytext()); return symbol(P4LTLSymbols.VALID); }
 	"ipmask"				{echoToken(yytext()); return symbol(P4LTLSymbols.IPMASK);}
 	"apply"					{echoToken(yytext()); return symbol(P4LTLSymbols.APPLY);}
 	"["						{echoToken(yytext()); return symbol(P4LTLSymbols.LBRACKET); }
 	"]"						{echoToken(yytext()); return symbol(P4LTLSymbols.RBRACKET); }
	
 	{ws}    				{/* ignore */ }
 	{Header}	    		{echoToken(yytext()); return symbol(P4LTLSymbols.NAME, yytext()); }
 	{IP}					{echoToken(yytext()); return symbol(P4LTLSymbols.IP, yytext()); }
 	{HexIntegerLiteral}		{echoToken(yytext()); return symbol(P4LTLSymbols.INT, new BigInteger(yytext().substring(2), 16)); }
 	{DecIntegerLiteral}		{echoToken(yytext()); return symbol(P4LTLSymbols.INT, new BigInteger(yytext())); }
 }

 
<<EOF>>                 {echoToken(yytext()); return symbol(P4LTLSymbols.EOF); }