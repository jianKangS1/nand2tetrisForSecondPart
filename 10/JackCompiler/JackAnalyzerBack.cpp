#include<vector>
#include<fstream>
#include<iostream>
#include<string>
#include"utils.h"
#include"TokenType.h"
#include"CompilationEngine.h"
#include"JackTokenizer.h"

using namespace std;

class JackAnalyzer{
private:
    ifstream inputFile;
    ofstream outputFile;
    vector<string> allFiles;

    JackTokenizer jackTokenizer;

    void ReadOneFile(int i){
        string outPutPath = allFiles[i].substr(0,allFiles[i].size()-5)+"MyT.xml";
        outputFile.open(outPutPath);
        assert(outputFile.is_open());
        inputFile.open(allFiles[i],ios::in);
        
        assert(inputFile.is_open());
        jackTokenizer.setIfstream(inputFile);
        outputFile<<"<tokens>"<<endl;
        while(jackTokenizer.hasMoreTokens()){
            jackTokenizer.advance();
            TokenType tokenType=jackTokenizer.tokenType();
            switch (tokenType)
            {
            case KEYWORD:{
                KeyWord k=jackTokenizer.keyWord();
                for(map<string,KeyWord>::iterator it=KEYWORDS_MAP.begin();it!=KEYWORDS_MAP.end();it++){
                    if(it->second==k){
                        outputFile<<"<keyword> "<<it->first<<" </keyword>"<<endl; 
                        break;
                    }
                
                }
                //outputFile<<"key word --> "<<k<<endl; 
                break;
            }

            case SYMBOL:
                {
                    char tempSymbol=jackTokenizer.symbol();
                    if(SYMBOLS_MAP.count(tempSymbol)){
                        outputFile<<"<symbol> "<<SYMBOLS_MAP[tempSymbol]<<" </symbol>"<<endl;
                    }
                    else
                        outputFile<<"<symbol> "<<tempSymbol<<" </symbol>"<<endl;
                    break;
                }
                
            case IDENTIFIER:
                outputFile<<"<identifier> "<<jackTokenizer.identifier()<<" </identifier>"<<endl;
                break;
            case INT_CONST:
                outputFile<<"<integerConstant> "<<jackTokenizer.intVal()<<" </integerConstant>"<<endl;
                break;
            case STRING_CONST:
                outputFile<<"<stringConstant> "<<jackTokenizer.stringVal()<<" </stringConstant>"<<endl;
                break;
            
            default:
                clog<<"error token type"<<endl;
                exit(-1);
            }
        }
        outputFile<<"</tokens>"<<endl;
        outputFile.close();
    }

public:
    JackAnalyzer(string path) {
        if(!isDirectory(path)){
            allFiles.push_back(path);
        }
        else{
            readFiles(allFiles,path,".jack");
        }
        
    }

    void start(){
        int i=0;
        while(i<allFiles.size())
            ReadOneFile(i++);
    }



    ~JackAnalyzer(){
        //使用了move函数，流控制权就给了类里面的，这里就不用close，再另外两个类里面析构
        if(outputFile.is_open())
            outputFile.close();
    }
};

int main(){
    string path="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\10\\ExpressionLessSquare";
    string path1="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\10\\JackCompiler";
    string path2="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\10\\ArrayTest";
    string path3="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\10\\Square";
    JackAnalyzer jackAnalyzer(path1);
    jackAnalyzer.start();
}
