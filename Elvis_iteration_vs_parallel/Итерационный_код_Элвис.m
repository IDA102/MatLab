clear all;
clc;
tic
K=10^5;
x1=-10;
x2=10;
dx=(x2-x1)/(K-1);
L=20;
x=x1:dx:x2;
S=zeros(1,K);
for i=1:K
    summ=0;
    for l=0:20
        summ=summ+(2/sqrt(pi))*(((-1)^l)*power(x(i),2*l+1)/(2*l+1)/factorial(l));
        S(1,i)=summ;
    end
end
time=toc
plot(S);