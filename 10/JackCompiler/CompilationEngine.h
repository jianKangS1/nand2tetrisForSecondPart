#pragma once
#include"JackTokenizer.h"
#include"TokenType.h"
using namespace std;
class CompilationEngine{
private :
    ofstream outputFile;
    JackTokenizer *jackTokenizer;
    int numTab=0;

    void drawTab(){
        for(int i=0;i<numTab;i++){
            outputFile<<"\t";
        }
    }

    void drawLabel(string label){
        if(numTab>0&&(label.size()>2&&label[1]=='/')){
            numTab--;
        }
        drawTab();
        outputFile<<label<<endl;

        if(label.size()>2&&label[1]!='/'){
            numTab++;
        }
    }

    void drawLabel(TokenType tokenType,string label){
        //写标签，keyword symbol identifier and string
        drawTab();
        switch (tokenType)
        {
            case KEYWORD:{
                outputFile<<"<keyword> "<<label<<" </keyword>"<<endl;  
                break;
            }
            case SYMBOL:
            {    
                outputFile<<"<symbol> "<<label<<" </symbol>"<<endl;
                break;
            }  
            case IDENTIFIER:
                outputFile<<"<identifier> "<<label<<" </identifier>"<<endl;
                break;
            case INT_CONST:
                outputFile<<"<integerConstant> "<<label<<" </integerConstant>"<<endl;
                break;
            case STRING_CONST:
                outputFile<<"<stringConstant> "<<label<<" </stringConstant>"<<endl;
                break;
            
            default:
                clog<<"error token type"<<endl;
                exit(-1);
            }
        }
    
    void drawLabel(TokenType tokenType){
        switch(tokenType){
            case KEYWORD:
                drawLabel(tokenType,convertKeyWordToString(jackTokenizer->keyWord()));
                break;
            case SYMBOL:
                drawLabel(tokenType,converSymbolToString(jackTokenizer->symbol()));
                break;
            case IDENTIFIER:
                drawLabel(tokenType,jackTokenizer->identifier());
                break;
            case INT_CONST:
                drawLabel(tokenType,to_string(jackTokenizer->intVal()));
                break;
            case STRING_CONST:
                drawLabel(tokenType,jackTokenizer->stringVal());
                break;
        }
            jackTokenizer->advance();
    }

    void drawNoContentLabel(string label){
        string tempLabel=label;
        label.insert(1,"/");
        drawTab();
        outputFile<<tempLabel<<'\n'<<label<<endl;
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
public:
    void setOfStream(ofstream &outputFile)
    {
        this->outputFile=move(outputFile);
    }
	
    void setJackTokenizer(JackTokenizer *jackTokenizer){
        this->jackTokenizer=jackTokenizer;
    }

    void closeOfStream(){
        if(outputFile.is_open())
            outputFile.close();
    }
    
    void compileClass(){
        drawLabel("<class> ");
        assert(jackTokenizer->tokenType()==KEYWORD);
        drawLabel(KEYWORD);// class
        
        assert(jackTokenizer->tokenType()==IDENTIFIER);
        drawLabel(IDENTIFIER);//class name
        
        assert(jackTokenizer->tokenType()==SYMBOL);
        drawLabel(SYMBOL);//  {
        
        while(jackTokenizer->hasMoreTokens()){
            if(jackTokenizer->tokenType()!=KEYWORD){
                break;
            }
            else if(jackTokenizer->currentString!="static"&&
                jackTokenizer->currentString!="field"){
                break;
            }
            compileClassVarDec();
        }
        
        while(jackTokenizer->hasMoreTokens()){
            
            if(jackTokenizer->tokenType()!=KEYWORD){
                break;
            }
            else if(jackTokenizer->currentString!="constructor"&&
                jackTokenizer->currentString!="function"&&
                jackTokenizer->currentString!="method"){
                break;
            }
            compileSubroutine();
        }
        assert(jackTokenizer->tokenType()==SYMBOL);
        drawLabel(SYMBOL);//  }
        drawLabel("</class>");
    }

    void compileClassVarDec(){
        drawLabel("<classVarDec>");
        drawLabel(jackTokenizer->tokenType());

        while(jackTokenizer->hasMoreTokens()){
            TokenType t=jackTokenizer->tokenType();
            
            if(t==SYMBOL&&jackTokenizer->currentStatement[0]==';'){
                drawLabel(t);
                break;
            }
            drawLabel(t);
        }

        drawLabel("</classVarDec>");
    }

    void compileSubroutine(){
        drawLabel("<subroutineDec>");

        drawLabel(jackTokenizer->tokenType()); //constructor
        drawLabel(jackTokenizer->tokenType());//void
        drawLabel(jackTokenizer->tokenType());//functionName
        drawLabel(jackTokenizer->tokenType());// (

        compileParameterList();
        drawLabel(jackTokenizer->tokenType());// )
        compileSubroutinebody();
        

        drawLabel("</subroutineDec>");
    }

    void compileSubroutinebody(){

        drawLabel("<subroutineBody>");
        drawLabel(jackTokenizer->tokenType());// {

        while(jackTokenizer->hasMoreTokens()){            
            TokenType t=jackTokenizer->tokenType();
            if(jackTokenizer->currentString!="var"){
                break;
            }
            compileVarDec();
        }
        compileStatements();
        drawLabel(jackTokenizer->tokenType());// }
        drawLabel("</subroutineBody>");
    }

    void compileParameterList(){
        
        TokenType t=jackTokenizer->tokenType();
        if(t==KEYWORD){
            drawLabel("<parameterList>");
            drawLabel(t);
            drawLabel(jackTokenizer->tokenType());
            while(jackTokenizer->hasMoreTokens()){
                TokenType  tx=jackTokenizer->tokenType();
                if(tx==SYMBOL&&jackTokenizer->currentStatement[0]==')'){
                    break;
                }
                drawLabel(tx);
            }
            drawLabel("</parameterList>");
        }
        else if(t==SYMBOL){
            drawNoContentLabel("<parameterList>");
        }
        else{
            clog<<"wrong compileParameterList"<<endl;
            exit(-1);
        }
               
        
    }

    void compileVarDec(){
        drawLabel("<varDec>");
        drawLabel(jackTokenizer->tokenType());

        while(jackTokenizer->hasMoreTokens()){
            TokenType t=jackTokenizer->tokenType();
            
            if(t==SYMBOL&&jackTokenizer->currentStatement[0]==';'){
                drawLabel(t);//加上最后的 ;
                break;
            }
            drawLabel(t);
        }
        drawLabel("</varDec>");
    }

    void compileStatements(){
        drawLabel("<statements>");

        while(jackTokenizer->hasMoreTokens()){
            TokenType t=jackTokenizer->tokenType();
            if(t!=KEYWORD){
                break;
            }
            string op=jackTokenizer->currentString;
            if(op=="let")
            {
                compileLet();
            }
            else if(op=="if"){
                compileIf();
            }
            else if(op=="while"){
                compileWhile();
            }
            else if(op=="do"){
                compileDo();
            }
            else if(op=="return"){
                compileReturn();
            }
            else{
                break;
            }
        }
        
        drawLabel("</statements>");
    }

    void compileLet(){
        drawLabel("<letStatement>");
        drawLabel(jackTokenizer->tokenType());//let
        drawLabel(jackTokenizer->tokenType());// x

        if(jackTokenizer->currentStatement[0]=='['){
            drawLabel(jackTokenizer->tokenType());


            compileExpression();

            drawLabel(jackTokenizer->tokenType());
        
        }
        drawLabel(jackTokenizer->tokenType());// =
        compileExpression();
        drawLabel(jackTokenizer->tokenType());// ;
        drawLabel("</letStatement>");
    }

    void compileIf(){
        drawLabel("<ifStatement>");
        drawLabel(jackTokenizer->tokenType());// if
        drawLabel(jackTokenizer->tokenType());// (
        compileExpression();
        drawLabel(jackTokenizer->tokenType());// )
        drawLabel(jackTokenizer->tokenType());// {
        compileStatements();
        drawLabel(jackTokenizer->tokenType());// }
        if(jackTokenizer->tokenType()==KEYWORD&&jackTokenizer->currentString=="else"){
            drawLabel(jackTokenizer->tokenType());// else
            drawLabel(jackTokenizer->tokenType());// {
            compileStatements();
            drawLabel(jackTokenizer->tokenType());//}
        }
        drawLabel("</ifStatement>");
    }

    void compileWhile(){
        drawLabel("<whileStatement>");
        drawLabel(jackTokenizer->tokenType());// while
        drawLabel(jackTokenizer->tokenType());// (
        compileExpression();
        drawLabel(jackTokenizer->tokenType());// )
        drawLabel(jackTokenizer->tokenType());// {
        compileStatements();
        drawLabel(jackTokenizer->tokenType());// }
        drawLabel("</whileStatement>");
    }

    void compileDo(){
        drawLabel("<doStatement>");
        drawLabel(jackTokenizer->tokenType());// do
        compileSubroutineCall(true);
        drawLabel(jackTokenizer->tokenType());// ;
        drawLabel("</doStatement>");
    }
    void compileReturn(){
        drawLabel("<returnStatement>");
        drawLabel(jackTokenizer->tokenType());// return
        if(!(jackTokenizer->tokenType()==SYMBOL&&jackTokenizer->currentString==";")){
            compileExpression();
        }
        drawLabel(jackTokenizer->tokenType());// ;
        drawLabel("</returnStatement>");
    }


    void compileTerm(){
        drawLabel("<term>");
        TokenType t=jackTokenizer->tokenType();
        switch (t)
        {
        case INT_CONST:
        case STRING_CONST:
            drawLabel(t);
        case KEYWORD:
        {
            if(jackTokenizer->currentString=="true"||
                jackTokenizer->currentString=="false"||
                jackTokenizer->currentString=="null"||
                jackTokenizer->currentString=="this")
            drawLabel(jackTokenizer->tokenType());
            break;
        }
        case IDENTIFIER:
        {
            drawLabel(t);
            TokenType tempToken=jackTokenizer->tokenType();
            if(tempToken==SYMBOL&&jackTokenizer->currentStatement[0]=='['){
                drawLabel(SYMBOL);
                compileExpression();
                drawLabel(jackTokenizer->tokenType());
            }
            else if(tempToken==SYMBOL&&(
                jackTokenizer->currentStatement[0]=='('||
                jackTokenizer->currentStatement[0]=='.')){
                    compileSubroutineCall(false);
            }
            break;
        }
        case SYMBOL:{
            char s=jackTokenizer->currentStatement[0];
            if(s=='-'||s=='~'){
                drawLabel(jackTokenizer->tokenType());
                compileTerm();
            }
            else if(s=='('){
                drawLabel(jackTokenizer->tokenType());//(
                compileExpression();
                drawLabel(jackTokenizer->tokenType());// )
            }
            else{
                clog<<"wrong symbol type for term"<<endl;
                exit(-1);
            }
            break;
        }
        default:
            clog<<"wrong type for term"<<endl;
            exit(-1);
            break;
        }
        drawLabel("</term>");
    }

    void compileSubroutineCall(bool flag){
        //flag为true，写第一个functionName,否则不写
        if(flag)
            drawLabel(jackTokenizer->tokenType());
        if(!(jackTokenizer->tokenType()==SYMBOL&&jackTokenizer->currentStatement[0]=='(')){
            drawLabel(jackTokenizer->tokenType());// .
            drawLabel(jackTokenizer->tokenType());// methodName

        }
        drawLabel(jackTokenizer->tokenType()); // (
        compileExpressionList();
        drawLabel(jackTokenizer->tokenType());// )
    }

    void compileExpression(){
        
        if(!(jackTokenizer->tokenType()==SYMBOL&&jackTokenizer->currentStatement[0]==';')){
            drawLabel("<expression>");
            compileTerm();
            while(jackTokenizer->hasMoreTokens()){
                if(jackTokenizer->tokenType()==SYMBOL&&SYMBOLS_OPERATION_SET.count(
                    jackTokenizer->currentStatement[0]
                )){
                    drawLabel(jackTokenizer->tokenType());
                    compileTerm();
                    
                }
                else{
                    break;
                }
            }
            drawLabel("</expression>");
        }
        
       
    }

    int compileExpressionList(){
        
        if(jackTokenizer->tokenType()==SYMBOL&&(
            jackTokenizer->currentStatement[0]==';'||
            jackTokenizer->currentStatement[0]==')'||
            jackTokenizer->currentStatement[0]==']'||
            jackTokenizer->currentStatement[0]=='}')){
                drawNoContentLabel("<expressionList>");
        }
        else{
            drawLabel("<expressionList>");
            compileExpression();
            while(jackTokenizer->hasMoreTokens()){
                if(jackTokenizer->tokenType()==SYMBOL&&
                    jackTokenizer->currentStatement[0]==','
                ){
                    drawLabel(jackTokenizer->tokenType());
                    compileExpression();
                    
                }
                else{
                    break;
                }
            }
            drawLabel("</expressionList>");
        }
        
        return 0;
    }

    ~CompilationEngine(){
        closeOfStream();
    }
};