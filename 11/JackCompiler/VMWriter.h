#include"Segment.h"
#include<string>
#include<fstream>
using namespace std;

class VMWriter{
private:
    ofstream outputFile;
public:
    void setOfStream(ofstream &outputFile)
    {
        this->outputFile=move(outputFile);
    }
    void writePush(Segment segment, int index){
        outputFile<<"push "<<segment_map[segment]<<" "<<index<<endl;

    };

    void writePop(Segment segment, int index){
        outputFile<<"pop "<<segment_map[segment]<<" "<<index<<endl;
    }

    void writeArithmetic(Command command){
        outputFile<<command_map[command]<<endl;
    }

    void writeLabel(string label){
        outputFile<<"label "<<label<<endl;
    }

    void writeGoto(string label){
        outputFile<<"goto "<<label<<endl;
    }

    void writeIf(string label){
        outputFile<<"if-goto "<<label<<endl;

    }

    void writeCall(string name, int nArgs){
        outputFile<<"call "<<name<<" "<<nArgs<<endl;
    }

    void writeFunction(string name, int nVars){
        outputFile<<"function "<<name<<" "<<nVars<<endl;
    }

    void writeReturn(){
        outputFile<<"return"<<endl;
    }

    void close(){
        if(outputFile.is_open())
            outputFile.close();
    };

    ~VMWriter(){
        close();
    }

};