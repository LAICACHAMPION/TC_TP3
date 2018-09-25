close all;
clear all;
r1=1600;
r2=5000;
c2=100e-9;
s=tf('s');
w0=sqrt(2+(r2/r1))/(10*c2*r2);

Qz=@(k) ((2.*r1+r2).*10.*r2)./((r2.*r2.*10-k.*k.*r2.*r2 -9.*k.*r2.*r2+r1.*r1+31.*r1.*r2)*sqrt(2+(r2/r1)));

Qp= @(k)((2.*r1+r2).*10.*r2)./((11.*k.*r2*r2-k.*k.*r2*r2+r1*r1+31*r1*r2).*sqrt(2+(r2/r1)));


H= @(t) ((((s/w0)^2)+s/(Qz(t)*w0)+1) / (((s/w0)^2)+s/(Qp(t)*w0)+1));

for v = 0:0.22:1
    hold on;
   bode(H(v));
   pause(0.5);
end

grid on;
hold off


