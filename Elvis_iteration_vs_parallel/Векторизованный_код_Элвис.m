clear all
clc
tic
K=10^5;
x1=-10;
x2=10;
dx=(x2-x1)/(K-1);
L=20;
x=x1:dx:x2;
l=0:20;
X1=(x'*ones(size(l)))';
X2=(l'*ones(size(x)));
X=X1.^(2.*X2+1);
k=(2/sqrt(pi));
k1_1=((-ones(size(l))).^l)';
k1=k1_1*ones(1,K);
k2_1=(2*(0:L)+1)';
k2=k2_1*ones(1,K);
k3_1=(factorial(0:L))';
k3=k3_1*ones(1,K);

S=k.*((k1.*X)./k2./k3);

w=(1:K);
w2=sum(S(:,w));
time=toc
plot(w2)

% ss=(a'*ones(size(b)))'
% ss1=(b'*ones(size(a)))
% ss3=ss.^ss1
% qwerty=(2/sqrt(pi)).*(((-1).^(0:L)).*power(x((i)),2.*(0:L)+1)./(2*(0:L)+1)./factorial(0:L));