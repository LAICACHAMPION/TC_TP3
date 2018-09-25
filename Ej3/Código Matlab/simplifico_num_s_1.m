clc;
clearvars;

syms v1 v2 vx vfeed vout1 vout2 vout vd vd1 vd2
syms r1 r2 r3 r4 r5 r6 r7 a0 wp positive
syms s 

num_s_1 =(2*a0^2*r1*r6^2*v2*wp^3 - 2*a0^2*r2*r6^2*v1*wp^3 + 2*a0^2*r1*r7^2*v2*wp^3 + 2*a0^2*r2*r6^2*v2*wp^3 - 2*a0^2*r2*r7^2*v1*wp^3 + a0^3*r1*r6^2*v2*wp^3 - a0^3*r2*r6^2*v1*wp^3 + 2*a0^2*r2*r7^2*v2*wp^3 + a0^3*r2*r6^2*v2*wp^3 + 4*a0^2*r1*r5*r6*v2*wp^3 - 4*a0^2*r2*r5*r6*v1*wp^3 + 4*a0^2*r1*r5*r7*v2*wp^3 + 4*a0^2*r2*r5*r6*v2*wp^3 - 4*a0^2*r2*r5*r7*v1*wp^3 + 2*a0^3*r1*r5*r6*v2*wp^3 - a0^3*r1*r5*r7*v1*wp^3 - 2*a0^3*r2*r5*r6*v1*wp^3 + 4*a0^2*r1*r6*r7*v2*wp^3 + 4*a0^2*r2*r5*r7*v2*wp^3 - 4*a0^2*r2*r6*r7*v1*wp^3 + a0^3*r1*r5*r7*v2*wp^3 + 2*a0^3*r2*r5*r6*v2*wp^3 - 2*a0^3*r2*r5*r7*v1*wp^3 + 4*a0^2*r2*r6*r7*v2*wp^3 + a0^3*r1*r6*r7*v2*wp^3 + 2*a0^3*r2*r5*r7*v2*wp^3 - a0^3*r2*r6*r7*v1*wp^3 + a0^3*r2*r6*r7*v2*wp^3);
num_s_1 = collect(num_s_1, [wp v1 v2]);
num_s_1 = simplify(num_s_1);

%saco el termino a0^2*wp^3
num_s_1 = v2*(2*r1*r6^2 + 2*r1*r7^2 + 2*r2*r6^2 + 2*r2*r7^2 + a0*r1*r6^2 + a0*r2*r6^2 + 4*r1*r5*r6 + 4*r1*r5*r7 + 4*r2*r5*r6 + 4*r1*r6*r7 + 4*r2*r5*r7 + 4*r2*r6*r7 + 2*a0*r1*r5*r6 + a0*r1*r5*r7 + 2*a0*r2*r5*r6 + a0*r1*r6*r7 + 2*a0*r2*r5*r7 + a0*r2*r6*r7) - v1*(2*r2*r6^2 + 2*r2*r7^2 + a0*r2*r6^2 + 4*r2*r5*r6 + 4*r2*r5*r7 + 4*r2*r6*r7 + a0*r1*r5*r7 + 2*a0*r2*r5*r6 + 2*a0*r2*r5*r7 + a0*r2*r6*r7);
num_s_1 = simplify(num_s_1);

%simplifico el termino de v2
v2_simp = 2*r1*r6^2 + 2*r1*r7^2 + 2*r2*r6^2 + 2*r2*r7^2 + a0*r1*r6^2 + a0*r2*r6^2 + 4*r1*r5*r6 + 4*r1*r5*r7 + 4*r2*r5*r6 + 4*r1*r6*r7 + 4*r2*r5*r7 + 4*r2*r6*r7 + 2*a0*r1*r5*r6 + a0*r1*r5*r7 + 2*a0*r2*r5*r6 + a0*r1*r6*r7 + 2*a0*r2*r5*r7 + a0*r2*r6*r7;
v2_simp = collect(v2_simp, a0);
v2_simp = simplify(v2_simp);

%simplifico el termino de v1
v1_simp = -( 2*r2*r6^2 + 2*r2*r7^2 + a0*r2*r6^2 + 4*r2*r5*r6 + 4*r2*r5*r7 + 4*r2*r6*r7 + a0*r1*r5*r7 + 2*a0*r2*r5*r6 + 2*a0*r2*r5*r7 + a0*r2*r6*r7);
v1_simp = collect(v1_simp, a0);
v1_simp = simplify(v1_simp);

%muestro que si elimino v1 depende de la diferencia!!!
simplify(v2_simp*v2 + subs(v1*v1_simp,v1,v2))
