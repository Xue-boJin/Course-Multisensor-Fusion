function [xf]=MIfunction(A,Q,C1,C2,R1,R2,z1,z2,xe,p)

for  i=1:length(z1);
   xe=A*xe;                                                           %卡尔曼滤波器的五个公式更新
    p1=A*p*A'+Q;
   p=inv(inv(p1)+C1'*inv(R1)*C1+C2'*inv(R2)*C2);
   K1=p*C1*inv(R1);
   K2=p*C2*inv(R2);
   xe=xe+K1*(z1(i)-C1*xe)+K2*(z2(i)-C2*xe);
   xf(:,i) = xe;
 
end

  
