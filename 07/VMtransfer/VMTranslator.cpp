#include<iostream>
#include<string>
#include<assert.h>
#include<vector>
#include <fstream>
#include "utils.h"
#include "CodeWriter.cpp"
#include "Parser.cpp"
#include "CommandType.cpp"



using namespace std;

class VMTranslator{
private:
    ifstream inputFile;
    ofstream outputFile;
    CodeWriter codeWriter;
    Parser parser;
    vector<string> allFiles;

    void ReadOneFile(int i){
        //cout<<allFiles[i]<<endl;
        inputFile.open(allFiles[i],ios::in);
        
        assert(inputFile.is_open());
        parser.setIfstream(inputFile);
        if(codeWriter._needComment)
            codeWriter.write("\n// "+allFiles[i]+"\n");
        codeWriter.setInputFilename(allFiles[i]);
        while(parser.hasMoreLines()){
            parser.advance();
                if(parser.isNotComment())
                {
                    if(codeWriter._needComment)
                        codeWriter.write("// "+parser.getCurrentCommand());
                    CommandType command=parser.commandType();
                    string arg1=parser.arg1();
                    switch (command)
                    {
                    case C_PUSH:
                    case C_POP:
                        codeWriter.writePushPop(command,arg1,parser.arg2());
                        break;
                    case C_ARITHMETIC:
                        codeWriter.writeArithmetic(arg1); 
                        break;
                    case C_LABEL:
                        codeWriter.writeLabel(arg1); 
                        break;
                    case C_GOTO:
                        codeWriter.writeGoto(arg1);
                        break;
                    case C_IF:
                        codeWriter.writeIf(arg1);
                        break;
                    case C_CALL:
                        codeWriter.writeCall(arg1,parser.arg2());
                        break;
                    case C_FUNCTION:
                        codeWriter.writeFunction(arg1,parser.arg2());
                        break;
                    case C_RETURN:
                        codeWriter.writeReturn();
                        break;
                    default:
                        break;
                    }
                    
            }
        }
    }

public:
    VMTranslator(string path) {
        string outPutPath;
        if(!isDirectory(path)){
            outPutPath = path.substr(0,path.size()-3)+".asm";
            allFiles.push_back(path);
        }
        else{
            int slashIndex=path.find_last_of('\\');
            if(slashIndex!=string::npos){
                outPutPath = path+'\\'+path.substr(slashIndex+1)+".asm";
            }
            else
                outPutPath = path+'\\'+path+".asm";
            readFiles(allFiles,path);
        }
        //创建ofstream
        //cout<<outPutPath<<endl;
        outputFile.open(outPutPath);

        assert(outputFile.is_open());
        codeWriter.setOfstream(outputFile,outPutPath);
        
    }

    void start(){
        if(allFiles.size()==1){
            ReadOneFile(0);
        }
        else{
            //要先翻译Sys.vm
            int indexOfSys=-1;
            for(int i=0;i<allFiles.size();i++){
                if(allFiles[i].find("Sys.vm")!=string::npos){
                    indexOfSys=i;
                    break;
                }
            }
            assert(indexOfSys!=-1);
            ReadOneFile(indexOfSys);
            for(int i=0;i<allFiles.size();i++){
                if(i!=indexOfSys)
                    ReadOneFile(i);
            }
        }
        
        
    }



    ~VMTranslator(){
        //使用了move函数，流控制权就给了类里面的，这里就不用close，再另外两个类里面析构
    }
};

int main(){
    string pa="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\08\\FunctionCalls\\StaticsTest";
    string pa1="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\07\\VMtransfer\\aa.vm";
    string pa2="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\08\\FunctionCalls\\NestedCall";
    string pa3="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\08\\FunctionCalls\\FibonacciElement";
    string pa4="C:\\Users\\Lenovo\\Desktop\\mynand2tetris\\nand2tetris\\projects\\09\\Square";
    VMTranslator vmTranslator(pa4);
    vmTranslator.start();
}