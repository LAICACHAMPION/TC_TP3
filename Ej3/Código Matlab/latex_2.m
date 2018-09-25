clc;
clearvars;


syms v1 v2 vx vfeed vout1 vout2 vout vd vd1 vd2
syms r1 r2 r3 r4 r5 r6 r7 a0 wp positive
syms s 


%Numerador:
%num_s_2
num_s_2 =a0^2*r1*r6^2*v2*wp^2 - a0^2*r2*r6^2*v1*wp^2 + a0^2*r1*r7^2*v2*wp^2 + a0^2*r2*r6^2*v2*wp^2 - a0^2*r2*r7^2*v1*wp^2 + a0^2*r2*r7^2*v2*wp^2 + 2*a0^2*r1*r5*r6*v2*wp^2 - 2*a0^2*r2*r5*r6*v1*wp^2 + 2*a0^2*r1*r5*r7*v2*wp^2 + 2*a0^2*r2*r5*r6*v2*wp^2 - 2*a0^2*r2*r5*r7*v1*wp^2 + 2*a0^2*r1*r6*r7*v2*wp^2 + 2*a0^2*r2*r5*r7*v2*wp^2 - 2*a0^2*r2*r6*r7*v1*wp^2 + 2*a0^2*r2*r6*r7*v2*wp^2;
num_s_2 = collect(num_s_2, [a0 wp]);
num_s_2 = collect(num_s_2, [v1 v2]);
num_s_2 = simplify(num_s_2);

%num_s_1
num_s_1 =(2*a0^2*r1*r6^2*v2*wp^3 - 2*a0^2*r2*r6^2*v1*wp^3 + 2*a0^2*r1*r7^2*v2*wp^3 + 2*a0^2*r2*r6^2*v2*wp^3 - 2*a0^2*r2*r7^2*v1*wp^3 + a0^3*r1*r6^2*v2*wp^3 - a0^3*r2*r6^2*v1*wp^3 + 2*a0^2*r2*r7^2*v2*wp^3 + a0^3*r2*r6^2*v2*wp^3 + 4*a0^2*r1*r5*r6*v2*wp^3 - 4*a0^2*r2*r5*r6*v1*wp^3 + 4*a0^2*r1*r5*r7*v2*wp^3 + 4*a0^2*r2*r5*r6*v2*wp^3 - 4*a0^2*r2*r5*r7*v1*wp^3 + 2*a0^3*r1*r5*r6*v2*wp^3 - a0^3*r1*r5*r7*v1*wp^3 - 2*a0^3*r2*r5*r6*v1*wp^3 + 4*a0^2*r1*r6*r7*v2*wp^3 + 4*a0^2*r2*r5*r7*v2*wp^3 - 4*a0^2*r2*r6*r7*v1*wp^3 + a0^3*r1*r5*r7*v2*wp^3 + 2*a0^3*r2*r5*r6*v2*wp^3 - 2*a0^3*r2*r5*r7*v1*wp^3 + 4*a0^2*r2*r6*r7*v2*wp^3 + a0^3*r1*r6*r7*v2*wp^3 + 2*a0^3*r2*r5*r7*v2*wp^3 - a0^3*r2*r6*r7*v1*wp^3 + a0^3*r2*r6*r7*v2*wp^3);
num_s_1 = collect(num_s_1, [wp v1 v2]);
num_s_1 = simplify(num_s_1);

%num_ind
num_ind = a0^2*r1*r6^2*v2*wp^4 - a0^2*r2*r6^2*v1*wp^4 + a0^2*r1*r7^2*v2*wp^4 + a0^2*r2*r6^2*v2*wp^4 - a0^2*r2*r7^2*v1*wp^4 + a0^3*r1*r6^2*v2*wp^4 - a0^3*r2*r6^2*v1*wp^4 + a0^2*r2*r7^2*v2*wp^4 + a0^3*r2*r6^2*v2*wp^4 - a0^4*r2*r7^2*v1*wp^4 + a0^4*r2*r7^2*v2*wp^4 + 2*a0^2*r1*r5*r6*v2*wp^4 - 2*a0^2*r2*r5*r6*v1*wp^4 + 2*a0^2*r1*r5*r7*v2*wp^4 + 2*a0^2*r2*r5*r6*v2*wp^4 - 2*a0^2*r2*r5*r7*v1*wp^4 + 2*a0^3*r1*r5*r6*v2*wp^4 - a0^3*r1*r5*r7*v1*wp^4 - 2*a0^3*r2*r5*r6*v1*wp^4 + 2*a0^2*r1*r6*r7*v2*wp^4 + 2*a0^2*r2*r5*r7*v2*wp^4 - 2*a0^2*r2*r6*r7*v1*wp^4 + a0^3*r1*r5*r7*v2*wp^4 + 2*a0^3*r2*r5*r6*v2*wp^4 - 2*a0^3*r2*r5*r7*v1*wp^4 + 2*a0^2*r2*r6*r7*v2*wp^4 + a0^3*r1*r6*r7*v2*wp^4 + 2*a0^3*r2*r5*r7*v2*wp^4 - a0^3*r2*r6*r7*v1*wp^4 + a0^3*r2*r6*r7*v2*wp^4 - a0^4*r2*r6*r7*v1*wp^4 + a0^4*r2*r6*r7*v2*wp^4;
num_ind = collect(num_ind, [a0 wp v1 v2]);
num_ind = simplify(num_ind);


%Denominador:

%den_s_4
den_s_4 = (r1*r6^2 + r1*r7^2 + r2*r6^2 + r2*r7^2 + 2*r1*r5*r6 + 2*r1*r5*r7 + 2*r2*r5*r6 + 2*r1*r6*r7 + 2*r2*r5*r7 + 2*r2*r6*r7);
den_s_4 = simplify(den_s_4);

%den_s_3
den_s_3 = (4*r1*r6^2*wp + 4*r1*r7^2*wp + 4*r2*r6^2*wp + 4*r2*r7^2*wp + 8*r1*r5*r6*wp + 8*r1*r5*r7*wp + 8*r2*r5*r6*wp + 8*r1*r6*r7*wp + 8*r2*r5*r7*wp + 8*r2*r6*r7*wp + 3*a0*r1*r6^2*wp + a0*r1*r7^2*wp + 2*a0*r2*r6^2*wp + 6*a0*r1*r5*r6*wp + 4*a0*r1*r5*r7*wp + 4*a0*r2*r5*r6*wp + 4*a0*r1*r6*r7*wp + 2*a0*r2*r5*r7*wp + 2*a0*r2*r6*r7*wp);
den_s_3 = collect(den_s_3, [wp a0]);
den_s_3 = simplify(den_s_3);

%den_s_2
den_s_2 = (6*r1*r6^2*wp^2 + 6*r1*r7^2*wp^2 + 6*r2*r6^2*wp^2 + 6*r2*r7^2*wp^2 + 3*a0^2*r1*r6^2*wp^2 + a0^2*r1*r7^2*wp^2 + a0^2*r2*r6^2*wp^2 + a0^2*r2*r7^2*wp^2 + 12*r1*r5*r6*wp^2 + 12*r1*r5*r7*wp^2 + 12*r2*r5*r6*wp^2 + 12*r1*r6*r7*wp^2 + 12*r2*r5*r7*wp^2 + 12*r2*r6*r7*wp^2 + 9*a0*r1*r6^2*wp^2 + 3*a0*r1*r7^2*wp^2 + 6*a0*r2*r6^2*wp^2 + 6*a0^2*r1*r5*r6*wp^2 + 2*a0^2*r1*r5*r7*wp^2 + 2*a0^2*r2*r5*r6*wp^2 + 3*a0^2*r1*r6*r7*wp^2 + a0^2*r2*r6*r7*wp^2 + 18*a0*r1*r5*r6*wp^2 + 12*a0*r1*r5*r7*wp^2 + 12*a0*r2*r5*r6*wp^2 + 12*a0*r1*r6*r7*wp^2 + 6*a0*r2*r5*r7*wp^2 + 6*a0*r2*r6*r7*wp^2);
den_s_2 = collect(den_s_2, [wp a0]);
den_s_2 = simplify(den_s_2);

%den_s_1
den_s_1 = (4*r1*r6^2*wp^3 + 4*r1*r7^2*wp^3 + 4*r2*r6^2*wp^3 + 4*r2*r7^2*wp^3 + 6*a0^2*r1*r6^2*wp^3 + 2*a0^2*r1*r7^2*wp^3 + 2*a0^2*r2*r6^2*wp^3 + a0^3*r1*r6^2*wp^3 + 2*a0^2*r2*r7^2*wp^3 + a0^3*r1*r7^2*wp^3 + 8*r1*r5*r6*wp^3 + 8*r1*r5*r7*wp^3 + 8*r2*r5*r6*wp^3 + 8*r1*r6*r7*wp^3 + 8*r2*r5*r7*wp^3 + 8*r2*r6*r7*wp^3 + 9*a0*r1*r6^2*wp^3 + 3*a0*r1*r7^2*wp^3 + 6*a0*r2*r6^2*wp^3 + 12*a0^2*r1*r5*r6*wp^3 + 4*a0^2*r1*r5*r7*wp^3 + 4*a0^2*r2*r5*r6*wp^3 + 2*a0^3*r1*r5*r6*wp^3 + 6*a0^2*r1*r6*r7*wp^3 + 2*a0^2*r2*r6*r7*wp^3 + 2*a0^3*r1*r6*r7*wp^3 + a0^3*r2*r6*r7*wp^3 + 18*a0*r1*r5*r6*wp^3 + 12*a0*r1*r5*r7*wp^3 + 12*a0*r2*r5*r6*wp^3 + 12*a0*r1*r6*r7*wp^3 + 6*a0*r2*r5*r7*wp^3 + 6*a0*r2*r6*r7*wp^3);
den_s_1 = collect(den_s_1, [wp a0]);
den_s_1 = simplify(den_s_1);

%den_s_ind
den_ind = r1*r6^2*wp^4 + r1*r7^2*wp^4 + r2*r6^2*wp^4 + r2*r7^2*wp^4 + 3*a0^2*r1*r6^2*wp^4 + a0^2*r1*r7^2*wp^4 + a0^2*r2*r6^2*wp^4 + a0^3*r1*r6^2*wp^4 + a0^2*r2*r7^2*wp^4 + a0^3*r1*r7^2*wp^4 + 2*r1*r5*r6*wp^4 + 2*r1*r5*r7*wp^4 + 2*r2*r5*r6*wp^4 + 2*r1*r6*r7*wp^4 + 2*r2*r5*r7*wp^4 + 2*r2*r6*r7*wp^4 + 3*a0*r1*r6^2*wp^4 + a0*r1*r7^2*wp^4 + 2*a0*r2*r6^2*wp^4 + 6*a0^2*r1*r5*r6*wp^4 + 2*a0^2*r1*r5*r7*wp^4 + 2*a0^2*r2*r5*r6*wp^4 + 2*a0^3*r1*r5*r6*wp^4 + 3*a0^2*r1*r6*r7*wp^4 + a0^2*r2*r6*r7*wp^4 + 2*a0^3*r1*r6*r7*wp^4 + a0^3*r2*r6*r7*wp^4 + a0^4*r1*r6*r7*wp^4 + 6*a0*r1*r5*r6*wp^4 + 4*a0*r1*r5*r7*wp^4 + 4*a0*r2*r5*r6*wp^4 + 4*a0*r1*r6*r7*wp^4 + 2*a0*r2*r5*r7*wp^4 + 2*a0*r2*r6*r7*wp^4;
den_ind = collect(den_ind, [wp a0]);
den_ind = simplify(den_ind);



