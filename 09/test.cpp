#include <iostream>
#include <string>
#include <algorithm>
#include<bits/stdc++.h>


using namespace std;

const int N=50;
int num[N];
int cnt=0;



int main() {
        ios::sync_with_stdio(false);
    cin.tie(0),cout.tie(0);
    int n;
    cin>>n;
    while(n--){
        bool flag;
        int org;cin>>org;
        if(org==0){
            cout<<0<<endl;
            continue;
        }
        memset(num,0,sizeof(num));cnt=0;
        flag=(org>=0);
        if(!flag){
            org=org*(-1);
        }
        while(org){
            num[cnt++]=org%3;
            org/=3;
        }
        
        int i=0;
        while(i<cnt){
            if(num[i]==2){
                num[i]=-1;
                num[i+1]++;
            }
            else if(num[i]==3){
                num[i]=0;
                num[i+1]++;
            }
            i++;
        }
        if (num[cnt]==1)
            cnt++;
        else if(num[cnt]==2){
            num[cnt++]=-1;
            num[cnt++]=1;
        }
        else if(num[cnt]==3){
            num[cnt++]=0;
            num[cnt++]=1;
        }
        
        if(!flag)
            {
                    for(i=0;i<cnt;i++){
        if(num[i]==1){
            num[i]=-1;
        }
        else if(num[i]==-1){
            num[i]=1;
        }
    }
            }
        for(i=cnt-1;i>=0;i--){
            if(num[i]==-1)
                cout<<"-";
            else
                cout<<num[i];
        }
        cout<<endl;

    }
   return 0;
}