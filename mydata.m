clear
clc
x(1)=5;
for i=2:50
    x(i)=0.7*x(i-1)+sqrt(1)*rand(1);
    z1(i)=x(i-1)+sqrt(1)*rand(1);
    z2(i)=3*x(i-1)+sqrt(3)*rand(1);
end

plot(x)
figure
plot(z1);hold on
plot(z2)
save myfusiondata x z1 z2