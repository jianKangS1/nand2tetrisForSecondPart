#include <iostream>
#include <string>
using namespace std;

class Person {
private:
    std::string name;
    int age;

public:


    // 带参数的构造函数
    Person(const std::string personName, int personAge) {
        name = personName;
        age = personAge;
    }

    // 成员函数
    void display() {
        std::cout << "Name: " << name << std::endl;
        std::cout << "Age: " << age << std::endl;
    }
};

int main() {

    string a("");
    if(a.size())
        cout<<a.back()<<endl;

    return 0;
}