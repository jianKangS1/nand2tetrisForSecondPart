#include "Segment.h"
#include<string>
#include<map>
#include<iostream>
using namespace std;

struct SymbolElment{
    string name;
    string type;
    Kind kind;
    int index;
};

class SymbolTable{
private:
    map<string, SymbolElment> symbolMap;
public:
    void reset(){
        symbolMap.clear();
    }

    void define(string name, string type, Kind kind){
        if(symbolMap.find(name) != symbolMap.end()){
            clog<<"Error: varibale "<<name<<"has been defined already"<<endl;
            exit(1);
        }
        int count=varCount(kind);
        symbolMap[name] = SymbolElment{name, type, kind, count};
    }

    int varCount(Kind kind){
        //获取表中已经定义作用域为kind的数量
        int count = 0;
        for(auto it = symbolMap.begin(); it != symbolMap.end(); it++){
            if(it->second.kind == kind){
                count++;
            }
        }
        return count;
    }
    Kind kindOf(string name){
        if(symbolMap.find(name) == symbolMap.end())
            return K_NONE;
        return symbolMap[name].kind;

    }

    string typeOf(string name){
        return symbolMap[name].type;
    }

    int indexOf(string name){
        return symbolMap[name].index;
    }


};