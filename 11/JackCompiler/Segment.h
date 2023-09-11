#pragma once
#include<map>
//对应的底层对应的段
enum Segment{
    S_CONSTANT,
    S_ARGUMENT,
    S_LOCAL,
    S_STATIC,
    S_THIS,
    S_THAT,
    S_POINTER,
    S_TEMP

};
map<Segment,string> segment_map{
    {S_CONSTANT,"constant"},
    {S_ARGUMENT,"argument"},
    {S_LOCAL,"local"},
    {S_STATIC,"static"},
    {S_THIS,"this"},
    {S_THAT,"that"},
    {S_POINTER,"pointer"},
    {S_TEMP,"temp"}
};
//运算符
enum Command{
    ADD,
    SUB,
    NEG,
    EQ,
    GT,
    LT,
    AND,
    OR,
    NOT,
    MULT,
    DIV
};
map<Command,string> command_map{
    {ADD,"add"},
    {SUB,"sub"},
    {NEG,"neg"},
    {EQ,"eq"},
    {GT,"gt"},
    {LT,"lt"},
    {AND,"and"},
    {OR,"or"},
    {NOT,"not"},
    {MULT,"call Math.multiply 2"},
    {DIV,"call Math.divide 2"}
};

map<char,Command> char_command_map{
    {'+',ADD},
    {'-',SUB},
    {'*',MULT},
    {'/',DIV},
    {'&',AND},
    {'|',OR},
    {'<',LT},
    {'>',GT},
    {'=',EQ},
    {'~',NOT}
};

//变量的种类，表示变量的作用域
enum Kind{
    K_STATIC,
    K_FIELD,
    K_ARG,
    K_LOCAL,
    K_NONE
};

