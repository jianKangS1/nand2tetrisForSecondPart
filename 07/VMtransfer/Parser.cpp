#pragma once

#include <fstream>
#include<string>
#include<iostream>
#include<set>
#include<math.h>
#include "CommandType.cpp"

using namespace std;

class Parser{
private:
    static set<string> OPERATOR_C_ARITHMETIC;
    string currentCommand;
    ifstream file;

    void trimLeft(string& str) {
        // 去除左边的空格
        int index=str.find_first_not_of(' ');
        if(index!=string::npos)
            str.erase(0, index);
    }

    void trimRight(string& str){
         // 去除右边的空格
         int index=str.find_last_not_of(' ') ;
         if(index!=string::npos)
            str.erase(index+ 1);
    }
public:

    string getCurrentCommand(){
        return currentCommand;
    }

    CommandType commandType(){
        int indexBackspace=currentCommand.find(' ');
        string command;
        if(indexBackspace==string::npos)
            command=currentCommand;
        else
            command=currentCommand.substr(0,indexBackspace);
        
        if(OPERATOR_C_ARITHMETIC.count(command)){
            return C_ARITHMETIC;
        }
        else if(command=="push")
            return C_PUSH;
        else if(command=="pop")
            return C_POP;
        else if(command=="label")
            return C_LABEL;
        else if(command=="goto")
            return C_GOTO;
        else if(command=="if-goto")
            return C_IF;
        else if(command=="function")
            return C_FUNCTION;
        else if(command=="return")
            return C_RETURN;
        else if(command=="call")
            return C_CALL;
        else
            return C_ERROR;

    };
    
    string arg1(){
        int firstBackspace=currentCommand.find(' ');
        if(firstBackspace==string::npos)
            return currentCommand;
        int secondBackspace=currentCommand.find(' ',firstBackspace+1);
        if(secondBackspace==string::npos)
            return currentCommand.substr(firstBackspace+1);
        else
            return currentCommand.substr(firstBackspace+1,secondBackspace-firstBackspace-1);
    };
    
    int arg2(){
        int ans=0;
        int index=0,size=currentCommand.size();

        while(index<size
        &&currentCommand[size-1-index]<='9'&&currentCommand[size-1-index]>='0'){
            ans=ans+((currentCommand[size-1-index]-'0')*(int)pow(10,index));
            index++;
        }
        return ans;
    };

    Parser(){
    }

    void setIfstream(ifstream& file){
        this->file=move(file);
    }

    bool hasMoreLines(){

        if(getline(this->file,currentCommand))
            return true;
        else
            return false;
    }

    void advance(){
        //解析下一行，更新arg1,arg2, commandType
        string words=currentCommand;
        if(!words.size())
            return;
        
        if(words.size()&&words.back()=='\n')
            words.erase(words.size()-1);
        if(!words.size())
            return;
        
        trimLeft(words);

        //去除注释
        int it=words.find("//");
        if(it!=string::npos){
            words=words.substr(0,it);
        }
        trimRight(words);
         
        if(words.size()&&words.back()=='\t')
            words.erase(words.size()-1);
        currentCommand=words;
    }

    bool isNotComment(){
        return currentCommand.size();
    }


    ~Parser(){
        this->file.close();
    }
};

set<string> Parser::OPERATOR_C_ARITHMETIC({	"add" , "sub" , "neg", "eq", "gt", "lt","and" , "or","not"});