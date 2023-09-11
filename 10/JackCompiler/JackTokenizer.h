#pragma once
#include<string>
#include<iostream>
#include<assert.h>
#include<fstream>
#include"TokenType.h"
using namespace std;


//ignore set 读取时，需要忽略的词
set<char> IGNORE_SET{'\n',' ','\t'};




class JackTokenizer{
private:
    char nextChar=' ';//读取的下一个字符
    
    
    int curSize=0;
    ifstream file;
    bool allDigit(){
        for(int i=0;i<curSize;i++){
            if(currentStatement[i]<'0'||currentStatement[i]>'9'){
                return false;
            }
        }
        return true;
    }

public:
    char currentStatement[MAX_VARNAME_LEN];
    string currentString;

    void setIfstream(ifstream& file){
        this->file=move(file);
    }


    bool hasMoreTokens(){
        if(nextChar!=EOF&&!IGNORE_SET.count(nextChar)){
            return true;
        }
        else{
            if(file.eof()){
                if(curSize==0)
                    return false;
                else{
                    return true;
                }
            }
            else{
                while(!file.eof()){
                    file.get(nextChar);
                    if(!IGNORE_SET.count(nextChar))
                        return true;
                }
                return false;
            }
        }

    }

    void advance(){
        if(nextChar!=EOF&&!IGNORE_SET.count(nextChar))
        {
            currentStatement[curSize++]=nextChar;
            nextChar=EOF;    
        }

        while(true){
            file.get(nextChar);
            if(file.eof())
                break;
            if(IGNORE_SET.count(nextChar)){
                if(curSize>=1)
                    return;
                else
                    continue;
            }
            else{
                if(curSize==1){
                    if(currentStatement[0]=='"'){
                        //处理  "aaa  how "
                        while(!file.eof()){
                            if(nextChar=='"'){
                                break;
                            }
                            currentStatement[curSize++]=nextChar;
                            file.get(nextChar);
                        }
                        currentStatement[curSize++]=nextChar;
                        nextChar=EOF;
                        return ;
                    }
                    else if(currentStatement[0]=='/'&&(nextChar=='/'||nextChar=='*')){
                        //处理 /**/ and //
                        if(nextChar=='/'){
                            string temp;
                            getline(file,temp);                           
                        }
                        else if(nextChar=='*'){
                            char tempChar;
                            while(!file.eof()){
                                tempChar=nextChar;
                                file.get(nextChar);
                                if(tempChar=='*'&&nextChar=='/'){   
                                    break;
                                }
                            }
                        }
                        curSize=0;
                        nextChar=EOF;
                        continue;
                    }
                    else if(SYMBOLS_SET.count(currentStatement[0]))
                        return ;
                }
                if(curSize!=0&&SYMBOLS_SET.count(nextChar)){
                        return ;
                }
                currentStatement[curSize++]=nextChar;
                nextChar=EOF;
            }
        }

    }

    TokenType tokenType(){
        if(curSize==0){
            clog<<"you should call advance before"<<endl;
            exit(-1);
        }   
        else if(curSize==1){
           if(SYMBOLS_SET.count(currentStatement[0])==1){
                return SYMBOL;
           }
           else if(currentStatement[0]>='0'&&currentStatement[0]<='9')
           {
                return INT_CONST;
           }
           else{
            //一个字符的标识符
                currentString=string(currentStatement,currentStatement+1);
                return IDENTIFIER;
           }
        }
        else{
            if(allDigit()){
                return INT_CONST;
            }
            else if(currentStatement[0]=='"'&&currentStatement[curSize-1]=='"'){
                return STRING_CONST;
            }
            else{
                currentString=string(currentStatement,currentStatement+curSize);
                if(KEYWORDS_SET.count(currentString)==1){
                    return KEYWORD;
                }
                else
                    return IDENTIFIER;
            }
        }
        return STRING_CONST;
    }

    KeyWord keyWord(){
        curSize=0;
        return KEYWORDS_MAP[currentString];
    }

    char symbol(){
        curSize=0;
        return currentStatement[0];
    }

    string identifier(){
        curSize=0;
        return currentString;
    }

    int intVal(){
        int res=0,gap=1;
        for(int i=curSize-1;i>=0;i--){
            res+=gap*(currentStatement[i]-'0');
            gap*=10;
        }
        curSize=0;
        return res;
    }

    string stringVal(){
        int temp=curSize;
        curSize=0;
        return string(currentStatement+1,currentStatement+temp-1);
    }

    ~JackTokenizer(){
        if(this->file.is_open())
            this->file.close();
    }
};