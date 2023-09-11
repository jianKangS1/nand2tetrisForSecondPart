#pragma once
#include"JackTokenizer.h"
#include"TokenType.h"
#include"VMWriter.h"
#include"SymbolTable.h"

using namespace std;

struct TokenResult{
    TokenType currentTokenType;//当前命令的tokentype
    KeyWord currentKeyWord;//当前命令的keyword
    char currentSymbol;//当前符号
    string currentIdentifier;//当前标识符
    int currentIntValue;//当前整数的值
    string currentStringValue;//当前字符串的值
};

class CompilationEngine{
private :
    JackTokenizer *jackTokenizer;
    VMWriter vmWriter;
    TokenResult tokenResult;

    SymbolTable classTable;
    SymbolTable subroutineTable;

    string className; //正在编译类的名字

    int ifIndex=0;//ifTable的索引
    int whileIndex=0;//whileTable的索引

    void initClassTable(){
        classTable.reset();
        while(jackTokenizer->hasMoreTokens()){
            if(tokenResult.currentTokenType!=KEYWORD){
                break;
            }
            else if(tokenResult.currentKeyWord!=STATIC&&
                tokenResult.currentKeyWord!=FIELD){
                break;
            }
            compileClassVarDec();
        }
    }

    void addLocalVarToSubroutineTable(){
        
        while(jackTokenizer->hasMoreTokens()){
            if(tokenResult.currentTokenType!=KEYWORD){
                break;
            }
            else if(tokenResult.currentKeyWord!=VAR){
                break;
            }
            compileVarDec();
        }

    }

    string convertKeyWordToString(KeyWord k){
        for(map<string,KeyWord>::iterator it=KEYWORDS_MAP.begin();it!=KEYWORDS_MAP.end();it++){
            if(it->second==k){
                return it->first;
            }
        }
        clog<<"error key word"<<endl;
        return "";
    }

    string converSymbolToString(char s){
        
        if(SYMBOLS_MAP.count(s)){
            return SYMBOLS_MAP[s];
        }
        else{

            return string(1, s);
        }
        
    }

    Segment convertKindToSegment(Kind k){
        switch (k)
        {
        case K_STATIC:
            return S_STATIC;
        case K_ARG:
            return S_ARGUMENT;
        case K_LOCAL:
            return S_LOCAL;
        case K_FIELD:
            return S_THIS;
        case K_NONE:
        default:
            clog<<"wrong convert from kind to segment"<<endl;
            exit(-1);
            break;
        }
        return S_CONSTANT;
    }


    void readNext(){
        //获取下一行的信息
        tokenResult.currentTokenType=jackTokenizer->tokenType();
        switch (tokenResult.currentTokenType)
        {
        case KEYWORD:
            tokenResult.currentKeyWord=jackTokenizer->keyWord();
            break;
        case SYMBOL:
            tokenResult.currentSymbol=jackTokenizer->symbol();
            break;
        case IDENTIFIER:
            tokenResult.currentIdentifier=jackTokenizer->identifier();
            break;
        case INT_CONST:
            tokenResult.currentIntValue=jackTokenizer->intVal();
            break;
        case STRING_CONST:
            tokenResult.currentStringValue=jackTokenizer->stringVal();
            break;
        default:
           {
            clog<<"wrong token type"<<endl;
            exit(-1);
           }
        }
        jackTokenizer->advance();
    
    }
    
    void queryVar(string name,Segment &s,int &i){
        Kind k=subroutineTable.kindOf(name);
        if(k==K_NONE){
            k=classTable.kindOf(name);
            assert(i!=K_NONE);
            i=classTable.indexOf(name);
            s=convertKindToSegment(classTable.kindOf(name));
        }
        else{
            i=subroutineTable.indexOf(name);
            s=convertKindToSegment(k);
        }

    }

    string queryVarType(string name){
        //之前一定要确定name在table里
        Kind k=subroutineTable.kindOf(name);
        if(k==K_NONE){
            return classTable.typeOf(name);
        }
        else{
            return subroutineTable.typeOf(name);
        }
    }

    bool queryVarInTable(string name){
        Kind k1=subroutineTable.kindOf(name);
        Kind k2=classTable.kindOf(name);
        return ((k1!=K_NONE)||(k2!=K_NONE));
    }
public:
    void setOfStream(ofstream &outputFile)
    {
        this->vmWriter.setOfStream(outputFile);
    }
	
    void setJackTokenizer(JackTokenizer *jackTokenizer){
        this->jackTokenizer=jackTokenizer;
    }

    void closeOfStream(){
        this->vmWriter.close();
    }
    
    void compileClass(){
        readNext();// class
        
        className=tokenResult.currentIdentifier;

        readNext();//class name
        className=tokenResult.currentIdentifier;
        readNext();//  {
        
        readNext();//field或者static

        initClassTable();
        
        while(jackTokenizer->hasMoreTokens()){
            
            if(tokenResult.currentTokenType!=KEYWORD){
                break;
            }
            else if(tokenResult.currentKeyWord!=CONSTRUCTOR&&
                tokenResult.currentKeyWord!=FUNCTION&&
                tokenResult.currentKeyWord!=METHOD){
                break;
            }
            compileSubroutine();
        }

        
    }

    void compileClassVarDec(){
        Kind kind; 
        if(tokenResult.currentKeyWord==FIELD){
            kind=K_FIELD;
        }
        else {
            kind=K_STATIC;
        }


        readNext();// 
        string type;
        if(tokenResult.currentTokenType==KEYWORD){
            type=convertKeyWordToString(tokenResult.currentKeyWord);
        }else{
            type=tokenResult.currentIdentifier;
        }

        
        while(true){
            readNext();//
            string name=tokenResult.currentIdentifier;
            classTable.define(name,type,kind);

            readNext();//
            if(tokenResult.currentSymbol==';'){
                readNext();//
                break;
            }
        }

        
    }

    void compileSubroutine(){
        //// cout<<"in subroutine"<<endl;
        
        subroutineTable.reset();
        //更新ifindex和whileindex
        ifIndex=0,whileIndex=0;


        KeyWord k=tokenResult.currentKeyWord;
        readNext(); // void | type
        readNext();//subroutineName
        string subroutineName=tokenResult.currentIdentifier;

        readNext();// (
        readNext();//第一个参数 或者 )
        if(k==METHOD){
            subroutineTable.define("this_function_pointer",subroutineName,K_ARG);
        }
        compileParameterList();

        

        readNext();// {
        readNext();//define var or excute commands
        addLocalVarToSubroutineTable();

        
        int numLocal=subroutineTable.varCount(K_LOCAL);
        vmWriter.writeFunction(className+'.'+subroutineName,numLocal);
        switch (k)
        {
        case CONSTRUCTOR:
        {
            
            int numField=classTable.varCount(K_FIELD);
            vmWriter.writePush(S_CONSTANT,numField);
            vmWriter.writeCall("Memory.alloc",1);
            vmWriter.writePop(S_POINTER,0);
            break;
        }   
        case FUNCTION:
            break;
        case METHOD:
            vmWriter.writePush(S_ARGUMENT,0);
            vmWriter.writePop(S_POINTER,0);
            break;
        default:
            break;
        }
        compileStatements();
        readNext();// }
        // cout<<"subroutine end"<<endl;
    }

    void compileParameterList(){
        
        TokenType t=tokenResult.currentTokenType;
        if(t==KEYWORD||t==IDENTIFIER){
            while(true){
                
                string type;
                if(t==KEYWORD){
                    type=convertKeyWordToString(tokenResult.currentKeyWord);
                }
                else{
                    type=tokenResult.currentIdentifier;
                }
                readNext();
                string name=tokenResult.currentIdentifier;
                subroutineTable.define(name,type,K_ARG);

                readNext();// ,

                if(tokenResult.currentSymbol==')'){
                    break;
                }
                readNext();//逗号，去掉
            }

        }
        else if(t==SYMBOL){
        }
        else{
            clog<<"wrong compileParameterList"<<endl;
            exit(-1);
        }
               
        
    }

    void compileVarDec(){

        readNext();// 
        string type;
        if(tokenResult.currentTokenType==KEYWORD){
            type=convertKeyWordToString(tokenResult.currentKeyWord);
        }else{
            type=tokenResult.currentIdentifier;
        }

        
        while(true){
            readNext();//
            string name=tokenResult.currentIdentifier;
            subroutineTable.define(name,type,K_LOCAL);

            readNext();//
            if(tokenResult.currentSymbol==';'){
                readNext();//
                break;
            }
        }
    }

    void compileStatements(){
        // cout<<"int statements"<<endl;
        while(jackTokenizer->hasMoreTokens()){
            TokenType t=tokenResult.currentTokenType;
            if(t!=KEYWORD){
                break;
            }
            KeyWord k=(tokenResult.currentKeyWord);
            if(k==LET)
            {
                compileLet();
            }
            else if(k==IF){
                compileIf();
            }
            else if(k==WHILE){
                compileWhile();
            }
            else if(k==DO){
                compileDo();
            }
            else if(k==RETURN){
                compileReturn();
            }
            else{
                break;
            }
            
        }
        // cout<<"end of int statements"<<endl;
    }

    void compileLet(){
        // cout<<"start of let"<<endl;
        readNext();//let
        string varName=tokenResult.currentIdentifier;
        readNext();// =

        if(tokenResult.currentSymbol=='['){
            Segment s;int index;
            queryVar(varName,s,index);
            vmWriter.writePush(s,index);
            compileAssignArray();
        }
        else{
            readNext();//读到expression的第一个字符
            compileExpression();
            Segment s;int index;
            queryVar(varName,s,index);
            vmWriter.writePop(s,index);
        }
        readNext();// ;
        // cout<<"end of let"<<endl;

    }

    void compileIf(){
        string thisIfIndex=to_string(ifIndex);
        ifIndex++;
        readNext();// if
        readNext();// (
        compileExpression();
        readNext();;// )
    
        vmWriter.writeIf("IF_TRUE"+thisIfIndex);
        vmWriter.writeGoto("IF_FALSE"+thisIfIndex);
        vmWriter.writeLabel("IF_TRUE"+thisIfIndex);
        readNext();;// {
        compileStatements(); //statements1
        readNext();;// }
        if(tokenResult.currentTokenType==KEYWORD&&tokenResult.currentKeyWord==ELSE){
            
            vmWriter.writeGoto("IF_END"+thisIfIndex);
            vmWriter.writeLabel("IF_FALSE"+thisIfIndex);
            readNext();// else
            readNext();// {
            compileStatements();
            readNext();//}
            vmWriter.writeLabel("IF_END"+thisIfIndex);
        }
        else{
            vmWriter.writeLabel("IF_FALSE"+thisIfIndex);
        }
        
    }

    void compileWhile(){
        string thisWhileIndex=to_string(whileIndex);
        whileIndex++;
        readNext();// while
        readNext();// (

        vmWriter.writeLabel("WHILE_EXP"+thisWhileIndex);
        compileExpression();
        vmWriter.writeArithmetic(NOT);
        vmWriter.writeIf("WHILE_END"+thisWhileIndex);
        readNext();// )
        readNext();// {
        
        compileStatements();
        vmWriter.writeGoto("WHILE_EXP"+thisWhileIndex);
        vmWriter.writeLabel("WHILE_END"+thisWhileIndex);

        readNext();// }

        
    }

    void compileGetArray(){
        // cout<<"compileGetArray start"<<endl;
        //push b[j] 确保b已经被push进入stack
        readNext();// [
        compileExpression();//j
        readNext();// ]
        vmWriter.writeArithmetic(ADD);
        vmWriter.writePop(S_POINTER,1);
        vmWriter.writePush(S_THAT,0);
        // cout<<"compileGetArray end"<<endl;

    }

    void compileAssignArray(){
        // cout<<"start of assign array"<<endl;
        //a[i]=expression;  确保a已经进入栈
        readNext();// [
        compileExpression();//i
        readNext();// ]
        vmWriter.writeArithmetic(ADD);
        readNext();// =
        compileExpression();//expression
        vmWriter.writePop(S_TEMP,0);
        vmWriter.writePop(S_POINTER,1);
        vmWriter.writePush(S_TEMP,0);
        vmWriter.writePop(S_THAT,0);
        
        // cout<<"end of assign array"<<endl;
    }

    void compileDo(){
        readNext();// do
        compileSubroutineCall(false,"");
        readNext();// ;
    }
    
    void compileReturn(){
                // cout<<"return start"<<endl;
        readNext();// return
        if((tokenResult.currentTokenType==SYMBOL&&tokenResult.currentSymbol==';')){
            
            vmWriter.writePush(S_CONSTANT,0);
        }
        else if((tokenResult.currentTokenType==KEYWORD&&tokenResult.currentKeyWord==THIS)){
            vmWriter.writePush(S_POINTER,0);
            readNext();
        }
        else{
            compileExpression();
        }
        

        vmWriter.writeReturn();
        readNext();// ;
        // cout<<"return end"<<endl;
    }


    void compileTerm(){
        TokenType tokentype=tokenResult.currentTokenType;
        switch (tokentype)
        {
        case INT_CONST:
            vmWriter.writePush(S_CONSTANT,tokenResult.currentIntValue);
            readNext();// next op
            break;
        case STRING_CONST:{
            string strRes=tokenResult.currentStringValue;;
            vmWriter.writePush(S_CONSTANT,strRes.length());
            vmWriter.writeCall("String.new",1);

            for(int i=0;i<strRes.length();i++){
                vmWriter.writePush(S_CONSTANT,(int)strRes[i]);
                vmWriter.writeCall("String.appendChar",2);
            }
            readNext();//string后面的内容
            break;
        }
        case KEYWORD:{
            KeyWord k =tokenResult.currentKeyWord;
            switch (k){
                case TRUE:{
                    vmWriter.writePush(S_CONSTANT,0);
                    vmWriter.writeArithmetic(NOT);
                    break;
                }
                case FALSE:{
                    vmWriter.writePush(S_CONSTANT,0);
                    break;
                }
                case NULLX:{
                    vmWriter.writePush(S_CONSTANT,0);
                    break;
                }
                case THIS:{
                    vmWriter.writePush(S_POINTER,0);
                    break;
                }
                default:{
                    clog<<"wrong type in term for identifier"<<endl;
                    exit(-1);
                }
            }
            readNext();// next
            break;
        }
        case SYMBOL:{
            if(tokenResult.currentSymbol=='-'||tokenResult.currentSymbol=='~'){
                Command c=(tokenResult.currentSymbol=='-'?NEG:NOT);
                readNext();// - | ~
                compileTerm();
                vmWriter.writeArithmetic(c);
                

            }
            else if(tokenResult.currentSymbol=='('){
                readNext();// (
                compileExpression();
                readNext();// )
            }
            break;
        }
        case IDENTIFIER:{
            string varName=tokenResult.currentIdentifier;
            readNext();
            if(tokenResult.currentTokenType==SYMBOL){
                char s=tokenResult.currentSymbol;
                if(s=='['){
                    Segment s;int index;
                    queryVar(varName,s,index);
                    vmWriter.writePush(s,index);
                    compileGetArray();
                }
                else if(s==']'||s==';'||s==','||s=='}'||s==')'){
                    Segment s;int index;
                    queryVar(varName,s,index);
                    vmWriter.writePush(s,index);
                }
                
                else if(s=='('||s=='.'){
                    compileSubroutineCall(true,varName);
                }
                else{
                    //单纯的是个变量
                    Segment s;int index;
                    queryVar(varName,s,index);
                    vmWriter.writePush(s,index);
                }
            }
            
        }
        default:
            break;
        }
    }

    void compileSubroutineCall(bool needReturnValue,string methodName){
        if(methodName.size()==0){
            methodName=tokenResult.currentIdentifier;
            readNext();
        }
        
        int n;
        if(tokenResult.currentTokenType==SYMBOL&&tokenResult.currentSymbol=='.'){
            //调用的方法
            readNext();// .
            bool isMethod=queryVarInTable(methodName);
            if(isMethod){
                Segment s;int index;
                queryVar(methodName,s,index);
                vmWriter.writePush(s,index);
                methodName=queryVarType(methodName)+"."+tokenResult.currentIdentifier;
                readNext();// 下一个是(
            }
            else{
                methodName=methodName+"."+tokenResult.currentIdentifier;
                readNext();// 下一个是(
            }

            readNext();// 读到括号后面的
            n=compileExpressionList();
            n+=isMethod;
            readNext();// )
        }
        else{
            //调用的函数 do show() 这样的 要多加一个参数
            vmWriter.writePush(S_POINTER,0);
            methodName=className+'.'+methodName;
            readNext();// (
            n=compileExpressionList();
            n++;
            readNext();// )
        }
        vmWriter.writeCall(methodName,n);
        //不需要返回值，pop掉
        if(!needReturnValue){
            vmWriter.writePop(S_TEMP,0);
        }
    }

    void compileExpression(){
        //读第一个term
        TokenType t=tokenResult.currentTokenType;
        switch (t)
        {
        case SYMBOL:
        {
            char s=tokenResult.currentSymbol;
            if(s=='-'||s=='~'){
                compileTerm();
                //readNext();
            }
            else if(s=='('){
                readNext();
                compileExpression();
                readNext();
            }
            else if(s==')'||s==']'||s==','||s=='}'||s==';'){
                return;
            }
            break;
        }
        
        default:
            compileTerm();
            break;
        }
        
        while(true){
            t=tokenResult.currentTokenType;
            switch (t)
            {
            case SYMBOL:
            {
                char s=tokenResult.currentSymbol;
                if(SYMBOLS_OPERATION_SET.count(s)){
                    readNext();
                    compileTerm();
                    if(char_command_map.count(s)==0){
                        clog<<"wrong arithmetic operator"<<endl;
                        exit(-1);
                    }
                    vmWriter.writeArithmetic(char_command_map[s]);
                    
                }
                else if(s=='('){
                    readNext();// (
                    compileExpression();
                    readNext();// )
                }
                else if(s==')'||s==']'||s==','||s=='}'||s==';'){
                    return;
                }
                break;
            }
            default:
                    break;
            }
        
        }   
        
       
    }

    int compileExpressionList(){
        int num=0;
        if(tokenResult.currentTokenType==SYMBOL&&(
            tokenResult.currentSymbol==';'||
            tokenResult.currentSymbol==')'||
            tokenResult.currentSymbol==']'||
            tokenResult.currentSymbol=='}')){
        }
        else{
            compileExpression();
            num++;
            while(jackTokenizer->hasMoreTokens()){
                if(tokenResult.currentTokenType==SYMBOL&&
                    tokenResult.currentSymbol==','
                ){
                    readNext();
                    compileExpression();
                    num++;
                }
                else{
                    break;
                }
            }
        }
        
        return num;
    }

    ~CompilationEngine(){
        closeOfStream();
    }
};