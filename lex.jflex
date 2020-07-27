
import java_cup.runtime.Symbol;
%%
%class Octal
%cup
%cupdebug
%line
%column
%full
%char
%public
/*Identifiers*/
numero=[0-7]

%{
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline+1, yycolumn+1, value);
    }
%}
%%
<YYINITIAL>{
{numero}                                               {return symbol(sym.N,new String(yytext()));}
("\n")|("\t")|(" ")                                    {}
.                                                      {return symbol(sym.Error,new String(yytext()));}    

}

