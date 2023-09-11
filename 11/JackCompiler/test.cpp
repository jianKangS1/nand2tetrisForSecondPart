#include"TokenType.h"
#include<fstream>
#include<iostream>
#include <cstring>

using namespace std;

TokenType a(){
    return SYMBOL;
}

int main(){
    string a("Test 1: expected result: 5; actual result: ");
    cout<<a.size()<<endl;
    return 0;
}