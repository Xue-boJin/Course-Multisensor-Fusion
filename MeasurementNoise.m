clc
clear
t=0:0.1:30;

a0=3*ones(1,301);
a1=0.3*t;
a2=randn(1,301)*0.5;
az=sin(t);
am=a0+a1+a2+az;
 subplot(2,2,1),plot(a0),title('测量常值误差')
  subplot(2,2,2),plot(a1),title('测量漂移误差')
   subplot(2,2,3),plot(a2),title('测量随机误差')
    subplot(2,2,4),plot(az),title('测量真值')
    figure
    plot(am),title('实际测量值')