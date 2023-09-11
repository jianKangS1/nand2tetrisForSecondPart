#include"TokenType.h"
#include<fstream>
#include<iostream>
#include <cstring>

using namespace std;

TokenType a(){
    return SYMBOL;
}

int main(){
    char a[4];
    char *a1=a;
    strcpy(a1,"123");
    printf(a1);
    return 0;
}