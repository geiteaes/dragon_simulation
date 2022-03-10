clc
clear all 
close all 


T=5;
n=T*12*30+1;
% dt=0.1;

for i=1:n 
   t(i)=(i-1);
   yield(i)=324.48*exp(-t(i)/12/30)+1000;
% yield(i)=rand()*1324.48;
end

b=0.0009;
t1=12*30+1;
j=1;
for i=1:t1
   mass(i)=10*exp((1/10)*(1-exp(-b*t(i)))); 
   if mod(t(i),360)==0
       recordweight(j)=mass(i);
       j=j+1;
   end
end

% plot(t(1:t1),mass)
% return 
b=0.01;
t2=5*12*30+1;
for i=t1+1:t2
mass(i)=mass(t1)+157370/(1+exp(-b*((t(i)-t(t1))-t(3*12*30))));
    if mod(t(i),360)==0
       recordweight(j)=mass(i);
       j=j+1;
   end
end
mass(t2)
plot(t,mass)
axis([0 1800 -inf inf])

return 
