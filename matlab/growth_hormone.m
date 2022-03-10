clc
clear all 
close all 

T=5;
n=T*12*30+1;
stddev=30;
rataan=2*12*30;

for i=1:n 
   t(i)=(i-1);
end
g = normpdf(t,rataan,stddev);
t1=12*30+1;
b=5;
c=0.001;
for i=1:t1
   weightstat(i)=10*exp((1/10)*(1-exp(-b*t(i))));
   heightstat(i)=0.3*exp((1/0.3)*(1-exp(-b*t(i))));
end
for i=t1+1:n
weightstat(i)=weightstat(t1)+157370/(1+exp(-c*((t(i)-t(t1))-t(3*12*30))));
heightstat(i)=heightstat(t1)+70/(1+exp(-c*((t(i)-t(t1))-t(3*12*30))));
end
weightstat(t1)
weightstat(n)

return 

for i=1:n
   yield(i)=(1/6)*(12.379*weightstat(i)+374.6762*t(i)-459.678*heightstat(i)+429.2168);
end

% plot(t,yield)
return 
height(1)=0.3;
alpha=8*10^(-4);%5*10^(-15);
beta=10^(-2);%10^(-15);
gamma=10^-7;
delta=10^-3;
mass(1)=10;
for i=1:n
   mass(i+1)=mass(i)+alpha*yield(i)+beta*g(i)*yield(i); 
   height(i+1)=height(i)+(gamma)*yield(i)+(delta)*g(i)*yield(i);
end
mass(n)
% height(n)
plot(t,mass(1:n))

