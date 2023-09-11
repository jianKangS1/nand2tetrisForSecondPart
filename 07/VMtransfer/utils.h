#include <dirent.h>
#include <sys/stat.h>
#include <string>
#include <vector>
#include<assert.h>
#include <cstring>
using namespace std;

bool isDirectory(const std::string& path) {
    //判断是否是文件夹
    struct stat path_stat;
    if (stat(path.c_str(), &path_stat) != 0) {
        return false;
    }
    return S_ISDIR(path_stat.st_mode);
}

void readFiles(vector<string>& vct,string path){
    DIR* dir;
    struct dirent* entry;
    
    // 打开当前路径
    dir = opendir(path.c_str());
    assert(dir!=nullptr);
    // 读取目录中的文件
    while ((entry = readdir(dir)) != nullptr) {
        
        size_t len=strlen(entry->d_name);
        if(len>3&&strcmp(entry->d_name+len-3,".vm")==0){
            string temp(entry->d_name);
            
            vct.push_back(path+'\\'+temp);
            //cout<<vct.back()<<endl;
        }     
    }

    // 关闭目录
    closedir(dir);

}