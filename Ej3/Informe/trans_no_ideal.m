clc;
clearvars;

syms v1 v2 vx vfeed vout1 vout2 vout vd vd1 vd2
syms r1 r2 r3 r4 r5 r6 r7 a0 wp positive
syms s 
%seteo el sistema de ecuaciones del circuito 
[VX, VFEED, VOUT1, VOUT2, VOUT, VD, VD1, VD2] = solve(...
(vout2-vd-vout)/r2 - (vout1-(vout2-vd))/r1 == 0,...
vd*(a0/(1+s/wp)) - vout == 0,...
(vout1-(v1-vd1))/r3-((v1-vd1)-vx)/r4 == 0,...
vd1*(a0/(1+s/wp))-vout1 == 0,...
(vfeed-vx)/r5-(vx-(v1-vd1))/r4-(vx-(v2-vd2))/r6 == 0,...
(vx-(v2-vd2))/r6-((v2-vd2)-vout2)/r7 == 0,...
vd2*(a0/(1+s/wp))-vout2 == 0,...
vout2*(a0/(1+s/wp))-vfeed == 0,...
[vx vfeed vout1 vout2 vout vd vd1 vd2]);
VOUT;
VOUT = subs(VOUT, r3, r7);
VOUT = subs(VOUT, r4, r6);
VOUT = simplify(VOUT);
%VOUT = collect(VOUT,wp);
VOUT = collect(VOUT,s)
% VOUT = collect(VOUT,a0);
% VOUT = collect(VOUT,r5);
%latex(VOUT)





