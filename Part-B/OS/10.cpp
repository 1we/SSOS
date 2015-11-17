#include<iostream>
using namespace std;
int n,sum,q;
struct time
{
float at,bt,tat;
int p;
}a[20];
void SJF();
void RRB();
int main()
{
int i,j,ch;
cout<<"Enter the no of processes\n";
cin>>n;
sum=0;
for(i=1;i<=n;i++)
{
cout<<"Enter the arrival time"<<i<<":";
cin>>a[i].at;
cout<<"Enter the burst time"<<i<<":";
cin>>a[i].bt;
a[i].p=i;
sum=sum+a[i].bt;
}
cout<<"1.SJF 2.RRB"<<endl;
cin>>ch;
switch(ch)
{
case 1:SJF();
       cout<<"Shortest remaining time job\n";
       break;
case 2:cout<<"Enter the Quantam";
       cin>>q;
       RRB();
       cout<<"\n\n";
}
cout<<"\n\n\n"<<"pno"<<"\t"<<"tat"<<endl;
for(i=1;i<=n;i++)
cout<<a[i].p<<"\t"<<a[i].tat<<"\n";
float avg=0;
for(i=1;i<=n;i++)
{
avg+=a[i].tat;
}
float tat=avg/n;
cout<<"average tat is"<<tat<<endl;
return 0;
}
void SJF()
{
float ts=0,diff;
int i,j=1,k=1;
while(ts<sum)
{
if(j<=n-1)
{
j++;
diff=a[j].at-a[j-1].at;
a[k].bt-=diff;
ts+=diff;
if(a[k].bt==0)
a[k].tat=ts-a[k].at;
}
else
{
j=n;
ts+=a[k].bt;
a[k].bt=0;
a[k].tat=ts-a[k].at;
}
int small=999;
for(i=1;i<=j;i++)
{
if(a[i].bt<small && a[i].bt!=0)
{
small=a[i].bt;
k=i;
}
}
}
for(i=1;i<=j;i++)
{
cout<<i<<"\t"<<a[i].tat<<endl;
}
}
void RRB()
{
float ts=0;
int i;
while (ts<sum)
{
for(i=1;i<=n;i++)
{
if(a[i].bt!=0)
{
if(a[i].bt<=q)
{
ts+=a[i].bt;
a[i].bt=0;
}
else
{
a[i].bt-=q;
ts+=q;
}
if(a[i].bt==0)
a[i].tat=ts-a[i].at;
}
}
}
}
              


