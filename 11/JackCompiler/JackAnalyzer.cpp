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

    CompilationEngine compilationEngine;

    void ReadOneFile(int i){
        string outPutPath = allFiles[i].substr(0,allFiles[i].size()-5)+".vm";
        outputFile.open(outPutPath);
        assert(outputFile.is_open());
        inputFile.open(allFiles[i],ios::in);
        
        assert(inputFile.is_open());
        jackTokenizer.setIfstream(inputFile);
        compilationEngine.setOfStream(outputFile);

        while(jackTokenizer.hasMoreTokens()){
            jackTokenizer.advance();
            TokenType tokenType=jackTokenizer.tokenType();
            //cout<<tokenType<<endl;
            assert(tokenType==KEYWORD);
            compilationEngine.compileClass();
        }
        
        compilationEngine.closeOfStream();
    }

public:
    JackAnalyzer(string path) {
        if(!isDirectory(path)){
            allFiles.push_back(path);
        }
        else{
            readFiles(allFiles,path,".jack");
        }
        compilationEngine.setJackTokenizer(&jackTokenizer);
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
    string path="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\ConvertToBin";
    string path1="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\JackCompiler";
    string path2="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\Average";
    string path3="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\10\\Square";
    string path4="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\Seven";
    string path5="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\ComplexArrays";
    string path6="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\Pong";
    string path7="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\11\\Square";

    JackAnalyzer jackAnalyzer(path6);
    jackAnalyzer.start();
}
