function [xf]=MIIfunction(A,Q,C1,C2,R1,R2,z1,z2,xe,p)
R=(R1*R2)/(R1+R2);
C=R*(C1/R1+C2/R2);
for i=1:length(z1)
xe=A*xe;
ze(i)=R*(z1(1,i)/R1+z2(1,i)/R2);
p1=A*p*A'+Q;   
K=p1*C'*inv(C*p1*C'+R); 
xe=xe+K*(ze(i)-C*xe);
p=inv(inv(p1)+C1'*inv(R1)*C1+C2'*inv(R2)*C2);
xf(:,i) = xe;
end


