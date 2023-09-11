#pragma once
#include<iostream>
#include <fstream>
#include<string>
#include<map>
#include<assert.h>
#include "CommandType.cpp"
using namespace std;	
class CodeWriter{
private:
    static map<string,string> SEGMENT_REAL_NAME;
    ofstream _file;
    
    string _inputfileName;
    string _outputfileName;

    int jmpIndexCount=0;//跳转标签
    int jmpFunctionCount=0;//函数调用标签

    void handleString(string &path){
        //处理路径的函数
        int lastPos=path.rfind("\\");
        if(lastPos!=string::npos){
            path=path.substr(lastPos+1);
        }
    }

    void assignDataFromRegToAddress(string orgion, string target){
        //RAM[target] <-- orgion
        _file<<"@"<<orgion<<"\nD=M\n";
        _file<<"@"<<target<<"\nA=M\nM=D\n";
    }

    void assignDataFromAddressToAddress(string orgion,string target){
        //RAM[target] <-- RAM[orgion]
       _file<<"@"<<orgion<<"\nA=M\nD=M\n";
       _file<<"@"<<target<<"\nA=M\nM=D\n";
    }

    void assignDataFromAddressToReg(string orgion, string target){
        //target <-- RAM[orgion]
        _file<<"@"<<orgion<<"\nD=M\nA=D\nD=M\n";  
        _file<<"@"<<target<<"\nM=D\n";
    }

    void assignDataUpdateAddressToReg(string orgion, char op,int offset, string target){
        //target <-- RAM[orgion op offset]  THIS <-- RAM[R12 - 5]
        _file<<"@"<<orgion<<"\nD=M\n@"<<offset<<"\nD=D"<<op<<"A\nA=D\nD=M\n";
        _file<<"@"<<target<<"\nM=D\n";
    }

    void assignDataUpdateAddressData(string orgion, char op, string target){
        //RAM[target] <-- RAM[target] op orgion   RAM[SP] <-- RAM[SP] + y
        _file<<"@"<<orgion<<"\nD=M\n";
        _file<<"@"<<target<<"\nA=M\nM=M"<<op<<"D\n";
        
    }

    void assignDataUpdateRegToReg(string orgion, char op,int offset,string target){
        //target <-- orgion op offset
        _file<<"@"<<orgion<<"\nD=M\n@"<<offset<<"\nD=D"<<op<<"A\n";
        _file<<"@"<<target<<"\nM=D\n";
    }

    void getData(string reg){
        _file<<"@"<<reg<<"\nD=M\n";
    }
    
    void getDataFromAddress(string reg){
        //从reg对应的地址里面取出数据到D
        if(_needComment)
            _file<<"// get data from address"<<reg<<"\n";
        _file<<"@"<<reg<<"\nA=M\nD=M\n";
    }

    void storeData(string reg){
        //把D的值存到reg里面
       
        _file<<"@"<<reg<<"\nM=D\n";
    }
    
    void storeDataToAddress(string reg){
        //把D的值存到reg对应的地址里面
        _file<<"@"<<reg<<"\nA=M\nM=D\n";
    }

    void pushData(){
        //把D里面的值 push 
        _file<<"@SP\nA=M\nM=D\n@SP\nM=M+1\n";
    }

    void pushDataFromBase(string base){
        _file<<"@"<<base<<"\nD=M\n";
        pushData();
    }

    void popData(){
        //将栈顶元素弹出，存到D里面
        _file<<"@SP\nM=M-1\nA=M\nD=M\n";
    }

    void moveM(string reg){
        //把当前M 指向reg
        _file<<"@"<<reg<<"\n";
    }
    
    void decreaseData(string reg){
        //将reg的数据减一
        //if(_needComment)
          //  _file<<"// decrease "<<reg<<"\n";
        _file<<"@"<<reg<<"\nM=M-1\n";
    }

    void increaseData(string reg){
        //将reg的数据加一
        //if(_needComment)
        //_file<<"// increase "<<reg<<"\n";
        _file<<"@"<<reg<<"\nM=M+1\n";
    }
    
    void getCallFunctionName(string &aim,string function){
        //设置调用函数时返回的标签 存在aim里
        string temp;int tempIndex=jmpFunctionCount;jmpFunctionCount++;
        while(tempIndex>=10){
            temp=char(tempIndex%10+'0')+temp;
            tempIndex/=10;
        }
        temp=char(tempIndex+'0')+temp;
        aim=function+"$ret."+temp;
    }

    void getDeclareFunctionName(string &aim,string function){
        //获取函数声明时的标签
        aim=function;
    }
public:
    bool _needComment=true;
    CodeWriter() {
    }

    void setOfstream(ofstream& file,string outputfileName) {
        _file=move(file);
        handleString(outputfileName);
        _outputfileName=outputfileName;
    }

    void setInputFilename(string inputFileName){
        handleString(inputFileName);
        _inputfileName=inputFileName;
    }

    void writeArithmetic(string command){
        if(command=="add"||command=="sub"||command=="and"||command=="or"){
            char a;
            if(command=="add") a='+';
            else if(command=="sub") a='-';
            else if(command=="and") a='&';
            else a='|';

            decreaseData("SP");
            assignDataFromAddressToReg("SP","R12");
            decreaseData("SP");
            assignDataUpdateAddressData("R12",a,"SP");
            increaseData("SP");
                
        }
        else if(command=="neg"||command=="not"){
            char op=(command=="neg"?'-':'!');
            decreaseData("SP");
            _file<<"@SP\nA=M\nM="<<op<<"M\n";
            increaseData("SP");          
        }
        else if(command=="eq"||command=="gt"||command=="lt"){

            string x="R13"; //第一个数字
            popData();
            storeData(x);
            popData();//第二个数字 在D里
            moveM(x);

            _file<<"M=D-M\nD=M\n";//第一个数字减去第二个数字

            string op;
            
            if(command=="eq") op="JEQ";
            else if(command=="gt") op="JGT";
            else op="JLT";

            _file<<"@Arithmetic_JM_TRUE"<<jmpIndexCount<<"\nD;"<<op
            <<"\nD=0\n@Arithmetic_END"<<jmpIndexCount<<"\n0;JMP\n(Arithmetic_JM_TRUE"<<jmpIndexCount<<")\nD=1\n(Arithmetic_END"<<jmpIndexCount<<")\n";
            pushData();
            jmpIndexCount++; 
        }
        else{
            clog<<"wrong Arithmetic operator"<<endl;
            exit(-1);
        }
        
    }

    void writePushPop(CommandType type,string segment,int index){
        switch (type)
        {
        case C_PUSH:
            if(SEGMENT_REAL_NAME.count(segment)){
                _file<<"@"<<SEGMENT_REAL_NAME[segment]<<"\nD=M\n";
                _file<<"@"<<index<<"\nD=D+A\n@R12\nM=D\n";//addr <-- LCL + i
                assignDataFromAddressToAddress("R12","SP");
            }
            else{
                if(segment=="constant"){
                    _file<<"@"<<index<<"\nD=A\n";
                }
                else if(segment=="temp"){
                    _file<<"@R"<<index+5<<"\nD=M\n";
                }
                else if(segment=="static"){
                    _file<<"@"<<_inputfileName.substr(0,_inputfileName.size()-2)<<index<<"\nD=M\n";
                    _file<<"@"<<_inputfileName.substr(0,_inputfileName.size()-2)<<index<<"\nD=M\n";
                }
                else if(segment=="pointer"){
                    _file<<"@"<<(index==0?"THIS":"THAT")<<"\nD=M\n";
                }
                else {
                    clog<<"wrong Arithmetic operator"<<endl;
                    exit(-1);
                }
                 _file<<"@SP\nA=M\nM=D\n";
            }
            increaseData("SP");
            break;
        case C_POP:{
            if(SEGMENT_REAL_NAME.count(segment)){
                _file<<"@"<<SEGMENT_REAL_NAME[segment]<<"\nD=M\n";
                _file<<"@"<<index<<"\nD=D+A\n@R12\nM=D\n";//addr <-- LCL + i
                decreaseData("SP");
                assignDataFromAddressToAddress("SP","R12");
            }
            else{
                decreaseData("SP");
                string target("");
                if(segment=="constant"){
                    clog<<"can't pop a data to constant"<<endl;
                    exit(-1);
                }
                else if(segment=="temp"){
                    target="R"+to_string(index+5);
                }
                else if(segment=="static"){
                    target=_inputfileName.substr(0,_inputfileName.size()-2)+to_string(index);
                }
                else if(segment=="pointer"){
                    target=(index==0?"THIS":"THAT");
                }
                else {
                    clog<<"wrong Arithmetic operator"<<endl;
                    exit(-1);
                }
                assignDataFromAddressToReg("SP", target);
            }   
            break;
        }
        default:
            clog<<"type should be C_PUSH or C_POP"<<endl;
            exit(-1);
            break;
        }
    }

    void writeLabel(string label){
        _file<<"("<<label<<")\n";
    }

    void writeGoto(string label){
        _file<<"@"<<label<<"\n0;JMP\n";
    }

    void writeIf(string label){
        //这里的label是跳转的地方
        popData();
        _file<<"@"<<label<<"\nD;JNE\n";
    }

    void writeFunction(string functionName, int nVars){
        //这里还需要检测函数是否重复存在
        string functionLabel;
        getDeclareFunctionName(functionLabel,functionName);

        writeLabel(functionLabel);

        _file<<"@0\nD=A\n";
        while(nVars--){
            pushData();
        }
    }

    void writeCall(string function, int nArgs){
        if(_needComment)
            _file<<"// call function "<<function<<" "<<nArgs<<" \n";
        
        string returnLable;
        getCallFunctionName(returnLable,function);
        if(_needComment)
            _file<<"//push retAddrLabel\n";
        _file<<"@"<<returnLable<<"\nD=A\n";
        pushData();
        if(_needComment)
            _file<<"//push LCL\n";
        pushDataFromBase("LCL");
        if(_needComment)
            _file<<"//push ARG\n";
        pushDataFromBase("ARG");
        if(_needComment)
            _file<<"//push THIS\n";
        pushDataFromBase("THIS");
        if(_needComment)
            _file<<"//push THAT\n";
        pushDataFromBase("THAT");
        if(_needComment)
            _file<<"//ARG=SP-5-nArgs\n";
        _file<<"@SP\nD=M\n@5\nD=D-A\n@"<<nArgs<<"\nD=D-A\n@ARG\nM=D\n";//ARG=SP-5-nArgs
        if(_needComment)
            _file<<"//LCL=SP\n";
        
        _file<<"@SP\nD=M\n@LCL\nM=D\n";//LCL=SP

        string callLabel;
        getDeclareFunctionName(callLabel,function);
        if(_needComment)
            _file<<"//goto function \n";
        writeGoto(callLabel); // go to function

        writeLabel(returnLable);
    }

    void writeReturn(){
        
        getData("LCL");
        string endFrame="R12";
        if(_needComment)
            _file<<"//R12=endFrame\n";
        storeData(endFrame); //R12=endFrame
        if(_needComment)
            _file<<"//R13=*(endFrame -5)\n";
        assignDataUpdateAddressToReg("R12",'-',5,"R13"); //R13=*(endFrame -5)

        decreaseData("SP");
        if(_needComment)
            _file<<"//*ARG=pop()\n";
        assignDataFromAddressToAddress("SP","ARG");//*ARG=pop()

        if(_needComment)
            _file<<"//SP=ARG+1\n";
        assignDataUpdateRegToReg("ARG",'+',1,"SP"); //SP=ARG+1

        if(_needComment)
            _file<<"//THAT= *(endFrame-1)\n";
        assignDataUpdateAddressToReg("R12",'-',1,"THAT");
        if(_needComment)
            _file<<"//THIS= *(endFrame-1)\n";
        assignDataUpdateAddressToReg("R12",'-',2,"THIS");
        if(_needComment)
            _file<<"//ARG= *(endFrame-1)\n";
        assignDataUpdateAddressToReg("R12",'-',3,"ARG");
        if(_needComment)
            _file<<"//LCL= *(endFrame-1)\n";
        assignDataUpdateAddressToReg("R12",'-',4,"LCL");
        if(_needComment)
            _file<<"//go to return address\n";
        _file<<"@R13\nA=M\n0;JMP\n";
    }

    void close(){
        if(_file.is_open())
            _file.close();
    }

    void write(string s){
        _file<<s<<"\n";
    }

    ~CodeWriter(){
        if(_file.is_open())
            _file.close();
    }
};

map<string,string>  CodeWriter::SEGMENT_REAL_NAME({{"local", "LCL"},
        {"argument", "ARG"},
        {"this", "THIS"},
        {"that", "THAT"}
});  //constant , static , temp , pointer 单独处理