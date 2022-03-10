clc
clear all 
close all 


T=1200;
n=T*12*30+1;
% dt=0.1;

for i=1:n 
   t(i)=(i-1);
   yield(i)=324.48*exp(-t(i)/12/30)+1000;
end

b=0.0009;
t1=12*30+1;
j=1;
for i=1:t1
   height(i)=0.3*exp(log(yield(i)/10)*(1-exp(-b*t(i)))); 
   if mod(t(i),360)==0
       recordheight(j)=height(i);
       j=j+1;
   end
end

b=0.01;
t2=T*12*30+1;
for i=t1+1:t2
height(i)=height(t1)+70/(1+exp(-b*((t(i)-t(t1))-t(3*12*30))));
if mod(t(i),360)==0
       recordheight(j)=height(i);
       j=j+1;
   end
end
height(t2)
plot(t,height)
axis([0 1800 -inf inf])

return 
