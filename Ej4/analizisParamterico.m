close all;
clear all;
r1=1600;
r2=5000;
s=tf('s');
h= @(k) 1/((s/k)+1);

Qz=@(k) ((2.*r1+r2).*10.*r2)./((r2.*r2.*10-k.*k.*r2.*r2 -9.*k.*r2.*r2+r1.*r1+31.*r1.*r2)*sqrt(2+(r2/r1)));

Qp= @(k)((2.*r1+r2).*10.*r2)./((11.*k.*r2*r2-k.*k.*r2*r2+r1*r1+31*r1*r2).*sqrt(2+(r2/r1)));

K=0:0.001:1;

plot(K,Qp(K)./Qz(K),'LineWidth',4);
hold on;
plot(K,Qz(K),'LineWidth',3);

plot(K,Qp(K),'LineWidth',2);

formataxes('', 'K','', ... % titulo y ejes
                    '$A_0$','$Q_z$','$Q_p$')% legends
