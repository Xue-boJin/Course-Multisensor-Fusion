function [xf]=TTfunction(A,Q,C1,C2,R1,R2,z1,z2,xe1,pk1,xe2,pk2,pij)

 for i=1:length(z1) 
     
 %传感器1滤波
xe1=A*xe1;
p1=A*pk1*A'+Q;    %P1表示前一步的状态估计方差
K1=p1*C1'*inv(C1*p1*C1'+R1); %K表示滤波系数
xe1=xe1+K1*(z1(i)-C1*xe1);   %xe表示当前状态估计值
pk1=(eye(size(p1))-K1*C1)*p1;  %eye(size(p1))表示大小和p1一样的矩阵
 
 %传感器2滤波
xe2=A*xe2;
p2=A*pk2*A'+Q;    %P2表示前一步的状态估计方差
K2=p2*C2'*inv(C2*p2*C2'+R2); %K表示滤波系数
xe2=xe2+K2*(z2(i)-C2*xe2);   %xe表示当前状态估计值
pk2=(eye(size(p2))-K2*C2)*p2;  %eye(size(p2))表示大小和p2一样的矩阵

pij=A*pij*A'+Q;
pij=(1-C1*K1)*pij*(1-C2*K2)';
pf=pk1-(pk1-pij)*inv(pk1+pk2-2*pij)*(pk1-pij);
xf(:,i)=xe1+(pk1-pij)*inv(pk1+pk2-2*pij)*(xe2-xe1);
 end
 
 