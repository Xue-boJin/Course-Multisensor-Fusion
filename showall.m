clear
clc

load myfusiondata
A=0.7;C1=1;C2=3;
Q=1;R1=1;R2=3;

%%% Measurement fusion I
p=100;
xe=5;
[xf]=MIfunction(A,Q,C1,C2,R1,R2,z1,z2,xe,p);
MI=xf;

%%% Measurement fusion II
p=100;
xe=5;
[xf]=MIIfunction(A,Q,C1,C2,R1,R2,z1,z2,xe,p);
MII=xf;

%%% Track to track fusion 
p1=100;p2=100;pij=100;
xe1=5;xe2=5;
[xf]=TTfunction(A,Q,C1,C2,R1,R2,z1,z2,xe1,p1,xe2,p2,pij);
TtoT=xf;
%%% Distributed optimal fusion
p1=100;p2=100;
xe1=5;xe2=5;
xkk=5;
pkk=100;
[xf]=DistributedFusionfunction(A,Q,C1,C2,R1,R2,z1,z2,xe1,p1,xe2,p2,xkk,pkk);
Optimal=xf;


sampling=1:length(x);

plot(sampling,x,sampling,MI,'*',sampling,MII,sampling,TtoT,sampling,Optimal);
 covMI=(x-MI)*(x-MI)'/length(x)
 covMII=(x-MII)*(x-MII)'/length(x)
 covTtoT=(x-TtoT)*(x-TtoT)'/length(x)
 covOptimal=(x-Optimal)*(x-Optimal)'/length(x)
legend('the real state','estimated by measurement fusion I','estimated by measurement fusion II','estimated by track to track fusion','estimated by optimal fusion')