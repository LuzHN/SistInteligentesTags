package Tags;
import static Tags.Token.*;

%%

%class Lexer
%type Token

%{

    public String lexema;
%}

AperturaTag = "<"
CerraduraTag = ">"
AperturaTagFinal = "</"

%state HTML

%%

<YYINITIAL>{
    {AperturaTag}  {yybegin(HTML);}
    {AperturaTagFinal}  {yybegin(HTML);}
    . { //cualquier otra cosa
        lexema = yytext();
        return DATO;
    }
}

<HTML> {
    {AperturaTag}  { 
        lexema = yytext();
        return ERROR;
    }
    {AperturaTagFinal}  { 
        lexema = yytext();
        return ERROR;
    }
    {CerraduraTag} {yybegin(YYINITIAL);}
    . {
        //ignorar todo
    }
}


