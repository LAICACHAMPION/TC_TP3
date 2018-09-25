clc;
clearvars;

syms v1 v2 vx vfeed vout1 vout2 vout vd vd1 vd2
syms r1 r2 r3 r4 r5 r6 r7 a0 wp positive
syms s 

den_s_3 = a0*wp*(3*r1*r6^2 + r1*r7^2 + 2*r2*r6^2 + 6*r1*r5*r6 + 4*r1*r5*r7 + 4*r2*r5*r6 + 4*r1*r6*r7 + 2*r2*r5*r7 + 2*r2*r6*r7) + 4*wp*(r1 + r2)*(r6 + r7)*(2*r5 + r6 + r7);
den_s_3 = collect(den_s_3, wp);
den_s_3 = simplify(den_s_3);

%saco el termino wp
den_s_3 = a0*(3*r1*r6^2 + r1*r7^2 + 2*r2*r6^2 + 6*r1*r5*r6 + 4*r1*r5*r7 + 4*r2*r5*r6 + 4*r1*r6*r7 + 2*r2*r5*r7 + 2*r2*r6*r7) + 4*(r1 + r2)*(r6 + r7)*(2*r5 + r6 + r7);
den_s_3 = collect(den_s_3, a0);
den_s_3 = simplify(den_s_3)


