%% statistic weight 

T=5;
n=T*12*30+1;
% dt=0.1;

for i=1:n 
   t(i)=(i-1);
end

t1=12*30+1;
for i=1:361
   weight(i)=10*exp((1/10)*(1-exp(-0.0009*t(i)))); 
end

t2=5*12*30+1;
for i=t1+1:t2
weight(i)=weight(t1)+157370/(1+exp(-0.01*((t(i)-t(t1))-t(3*12*30))));
end

%% statistic height 

t1=12*30+1;
for i=1:t1
   height(i)=0.3*exp((1/0.3)*(1-exp(-0.0009*t(i)))); 
end
t2=T*12*30+1;
for i=t1+1:t2
height(i)=height(t1)+70/(1+exp(-0.01*((t(i)-t(t1))-t(3*12*30))));
end

%% deterministic weight 
g = normpdf(t,720,30);
for i=1:n
   mass(i+1)=mass(i)+yield(i)*(0.02+0.005*g(i)); 
   height(i+1)=height(i)+yield(i)*((8*10^-6)+(10^-7)*g(i));
end