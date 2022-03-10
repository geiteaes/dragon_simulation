clc 
clear all 
close all 

k=0;
v=2;
x0=[157370 0 -1];
% x0=[-3 -4 3 -3];
x=x0;
eps=10^-5;
kmax=200;
tau=1; 

%generate data 
% nt=3;
% x1=120;
% x0=0;
% dt=x1/nt;

% for m=1:nt
%     ty(m,1)=(m)*dt; %sumbu x 
%     z(m)=4*exp(-4*ty(m,1))-4*exp(-5*ty(m,1));
%     ba=z(m)+0.05*z(m);
%     bb=z(m)-0.05*z(m);
%     ty(m,2)=bb+rand()*(ba-bb); %nilai yang akan dihampiri 
% end
% dt=1;
% nt=5*12*30+1; %daily 
% for i =1:nt
%     ty(i,1)=i-1;
%     
% end
ty(1,1)=0;
ty(1,2)=10; %weight 0 tahun  
ty(2,1)=2*12*30;
ty(2,2)=35;
ty(3,1)=5*12*30;
ty(3,2)=1860953.335;

[f j]=fitexp(x,ty);
A=j'*j;
g=j'*f;
m=tau*max(max(A));
% max(max(A))
% return 
disp([' k','                    x                    '])

while norm(g)>eps && k<kmax

   g=j'*f;
   hlm=-inv(A+m*eye(3))*g;
%    return 
   if norm(hlm)<=eps*(norm(x)+eps)
       break 
   else
      xnew=x+hlm';
      [fnew jnew]=fitexp(xnew,ty);
      sz=length(hlm);
%       return
     
      R=(F(f)-F(fnew))/(L(zeros(sz,1),f,j)-L(hlm,f,j));
      if R>0
          x=xnew;
         [f j]=fitexp(x,ty);

          A=j'*j; 
          g=j'*f; 
          m=min(1/3,abs(1-(2*R-1)^3));
%           return
         v=2;
      else
          m=m*v;
          v=2*v;
      end
   end
   
   k=k+1; 
        record(k,1)=k;
        record(k,2)=x(1);
        record(k,3)=x(2);
        record(k,4)=x(3);
%         record(k,5)=x(4);
        record(k,6)=F(f);
        record(k,7)=R;
        record(k,8)=m;
        record(k,9)=norm(g);

        disp([' ',num2str(k),'   ',num2str(x(1)),'     ',num2str(x(2)),'     ',num2str(x(3))])
            
end

nt=5*12*30+1;
for m=1:nt
    t(m)=m-1;
    fit(m)=x(1)^2*t(m)-x(2)*t(m)-x(3);
end



plot(t(:),fit(:),'LineWidth',2);
hold on
scatter(ty(:,1),ty(:,2),'+')
title('Data observasi dan Fitting Model')
xlabel('t')
ylabel('y')
legend('fitting model','data observasi')

function [f j]=fitexp(x,ty)
t=ty(:,1);
y=ty(:,2);
n=3;

f(:,1)=y(:)-(x(1)^2*t(:)-x(2)*t(:)-x(3));

for i=1:n
    j(i,1)=-t(i)^2;
    j(i,2)=-t(i);
    j(i,3)=-1; 
end
end

% return
function a=F(f)
a=0;
for i=1:3
    a=a+0.5*f(i)^2;
end
end

function y=L(h,f,j)
y=0.5*(norm(f+j*h))^2;
% y=0.5*l'*l;
% y=F(f)+(h'*j'*f')+0.5*(h'*j'*j*h);
end