clc
clear all 
close all 


T=5;
n=T*12*30+1;
% dt=0.1;

for i=1:n 
   t(i)=(i-1);
%    yield(i)=324.48*exp(-t(i)/12/30)+1000;
yield(i)=(1/6)*calin(i);
end


