#pragma once
#include<map>
#include<set>
#include<string>
using namespace std;

enum TokenType{
    KEYWORD,SYMBOL,IDENTIFIER,INT_CONST,STRING_CONST
};

enum KeyWord{
    CLASS,
    METHOD,
    FUNCTION,
    CONSTRUCTOR,
    INT,
    BOOLEAN,
    CHAR,
    VOID,
    VAR,
    STATIC,
    FIELD,
    LET,
    DO,
    IF,
    ELSE,
    WHILE,
    RETURN,
    TRUE,
    FALSE,
    NULLX, //NULL是关键字
    THIS

};
//变量名最长长度，包括字符串的最大长度
const int MAX_VARNAME_LEN = 64;

//keyword set
set<string> KEYWORDS_SET{"else","while","if","do","class","constructor","function","method","let","return","field","static","var","int","char","boolean","void","true","false","null","this"};

//symbol set
set<char> SYMBOLS_SET{'{','}','(',')','[',']',
    ',','.',';',
    '+','-','*','/',
    '&','|','<','>','=','~'};

set<char> SYMBOLS_OPERATION_SET{
    '+','-','*','/',
    '&','|','<','>','='
};

map<string,KeyWord> KEYWORDS_MAP{
    {"class",CLASS},
    {"method",METHOD},
    {"function",FUNCTION},
    {"constructor",CONSTRUCTOR},
    {"int",INT},
    {"boolean",BOOLEAN},
    {"char",CHAR},
    {"void",VOID},
    {"var",VAR},
    {"static",STATIC},
    {"field",FIELD},
    {"let",LET},
    {"do",DO},
    {"if" , IF},
    {"else" , ELSE},
    {"while" , WHILE},
    {"return" , RETURN},
    {"true" , TRUE},
    {"false" , FALSE},
    {"null" , NULLX},
    {"this", THIS}
};

//symbol map to xmlfile 
map<char,string> SYMBOLS_MAP{
    {'<',"&lt;"} ,
    {'>',"&gt;"},
    {'"',"&quot;"},
    {'&',"&amp;"}
};
