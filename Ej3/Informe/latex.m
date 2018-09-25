clc;
clearvars;

syms v1 v2 vx vfeed vout1 vout2 vout vd vd1 vd2
syms r1 r2 r3 r4 r5 r6 r7 a0 wp positive
syms s 

%numerador 
%s cuadrado 

s_cuadrado = (a0^2*r1*r4*r6^2*v2*wp^2 - a0^2*r2*r4*r6^2*v1*wp^2 + a0^2*r1*r4*r7^2*v2*wp^2 + a0^2*r1*r5*r6^2*v2*wp^2 + a0^2*r2*r4*r6^2*v2*wp^2 - a0^2*r2*r4*r7^2*v1*wp^2 - a0^2*r2*r5*r6^2*v1*wp^2 + a0^2*r2*r4*r7^2*v2*wp^2 + a0^2*r2*r5*r6^2*v2*wp^2 + a0^2*r1*r4*r5*r6*v2*wp^2 - a0^2*r2*r4*r5*r6*v1*wp^2 + a0^2*r1*r4*r5*r7*v2*wp^2 + a0^2*r2*r4*r5*r6*v2*wp^2 - a0^2*r2*r4*r5*r7*v1*wp^2 + 2*a0^2*r1*r4*r6*r7*v2*wp^2 + a0^2*r2*r4*r5*r7*v2*wp^2 - 2*a0^2*r2*r4*r6*r7*v1*wp^2 + a0^2*r1*r5*r6*r7*v2*wp^2 + 2*a0^2*r2*r4*r6*r7*v2*wp^2 - a0^2*r2*r5*r6*r7*v1*wp^2 + a0^2*r2*r5*r6*r7*v2*wp^2);
s_cuadrado = collect(s_cuadrado, [a0 wp]);
s_cuadrado = collect(s_cuadrado, [v1 v2]);
s_cuadrado = simplify(s_cuadrado);

%s simple
s_simple = (2*a0^2*r1*r4*r6^2*v2*wp^3 - 2*a0^2*r2*r4*r6^2*v1*wp^3 + 2*a0^2*r1*r4*r7^2*v2*wp^3 + 2*a0^2*r1*r5*r6^2*v2*wp^3 + 2*a0^2*r2*r4*r6^2*v2*wp^3 - 2*a0^2*r2*r4*r7^2*v1*wp^3 - 2*a0^2*r2*r5*r6^2*v1*wp^3 + a0^3*r1*r4*r6^2*v2*wp^3 - a0^3*r2*r4*r6^2*v1*wp^3 + 2*a0^2*r2*r4*r7^2*v2*wp^3 + 2*a0^2*r2*r5*r6^2*v2*wp^3 + a0^3*r1*r5*r6^2*v2*wp^3 + a0^3*r2*r4*r6^2*v2*wp^3 - a0^3*r2*r5*r6^2*v1*wp^3 + a0^3*r2*r5*r6^2*v2*wp^3 + 2*a0^2*r1*r4*r5*r6*v2*wp^3 - 2*a0^2*r2*r4*r5*r6*v1*wp^3 + 2*a0^2*r1*r4*r5*r7*v2*wp^3 + 2*a0^2*r2*r4*r5*r6*v2*wp^3 - 2*a0^2*r2*r4*r5*r7*v1*wp^3 + a0^3*r1*r4*r5*r6*v2*wp^3 - a0^3*r2*r4*r5*r6*v1*wp^3 + 4*a0^2*r1*r4*r6*r7*v2*wp^3 + 2*a0^2*r2*r4*r5*r7*v2*wp^3 - 4*a0^2*r2*r4*r6*r7*v1*wp^3 + a0^3*r2*r4*r5*r6*v2*wp^3 - a0^3*r2*r4*r5*r7*v1*wp^3 + 2*a0^2*r1*r5*r6*r7*v2*wp^3 + 4*a0^2*r2*r4*r6*r7*v2*wp^3 - 2*a0^2*r2*r5*r6*r7*v1*wp^3 + a0^3*r1*r4*r6*r7*v2*wp^3 - a0^3*r1*r5*r6*r7*v1*wp^3 + a0^3*r2*r4*r5*r7*v2*wp^3 - a0^3*r2*r4*r6*r7*v1*wp^3 + 2*a0^2*r2*r5*r6*r7*v2*wp^3 + a0^3*r1*r5*r6*r7*v2*wp^3 + a0^3*r2*r4*r6*r7*v2*wp^3 - a0^3*r2*r5*r6*r7*v1*wp^3 + a0^3*r2*r5*r6*r7*v2*wp^3);
s_simple = collect(s_simple, [a0 wp v1 v2]);
s_simple = simplify(s_simple);


%independiente
ind = (a0^2*r1*r4*r6^2*v2*wp^4 - a0^2*r2*r4*r6^2*v1*wp^4 + a0^2*r1*r4*r7^2*v2*wp^4 + a0^2*r1*r5*r6^2*v2*wp^4 + a0^2*r2*r4*r6^2*v2*wp^4 - a0^2*r2*r4*r7^2*v1*wp^4 - a0^2*r2*r5*r6^2*v1*wp^4 + a0^3*r1*r4*r6^2*v2*wp^4 - a0^3*r2*r4*r6^2*v1*wp^4 + a0^2*r2*r4*r7^2*v2*wp^4 + a0^2*r2*r5*r6^2*v2*wp^4 + a0^3*r1*r5*r6^2*v2*wp^4 + a0^3*r2*r4*r6^2*v2*wp^4 - a0^3*r2*r5*r6^2*v1*wp^4 + a0^3*r2*r5*r6^2*v2*wp^4 - a0^4*r2*r4*r7^2*v1*wp^4 + a0^4*r2*r4*r7^2*v2*wp^4 + a0^2*r1*r4*r5*r6*v2*wp^4 - a0^2*r2*r4*r5*r6*v1*wp^4 + a0^2*r1*r4*r5*r7*v2*wp^4 + a0^2*r2*r4*r5*r6*v2*wp^4 - a0^2*r2*r4*r5*r7*v1*wp^4 + a0^3*r1*r4*r5*r6*v2*wp^4 - a0^3*r2*r4*r5*r6*v1*wp^4 + 2*a0^2*r1*r4*r6*r7*v2*wp^4 + a0^2*r2*r4*r5*r7*v2*wp^4 - 2*a0^2*r2*r4*r6*r7*v1*wp^4 + a0^3*r2*r4*r5*r6*v2*wp^4 - a0^3*r2*r4*r5*r7*v1*wp^4 + a0^2*r1*r5*r6*r7*v2*wp^4 + 2*a0^2*r2*r4*r6*r7*v2*wp^4 - a0^2*r2*r5*r6*r7*v1*wp^4 + a0^3*r1*r4*r6*r7*v2*wp^4 - a0^3*r1*r5*r6*r7*v1*wp^4 + a0^3*r2*r4*r5*r7*v2*wp^4 - a0^3*r2*r4*r6*r7*v1*wp^4 + a0^2*r2*r5*r6*r7*v2*wp^4 + a0^3*r1*r5*r6*r7*v2*wp^4 + a0^3*r2*r4*r6*r7*v2*wp^4 - a0^3*r2*r5*r6*r7*v1*wp^4 - a0^4*r2*r4*r6*r7*v1*wp^4 + a0^3*r2*r5*r6*r7*v2*wp^4 + a0^4*r2*r4*r6*r7*v2*wp^4);
ind = collect(ind, [a0 wp v1 v2]);
ind = simplify(ind);


% Denominador
%s cuarta

s_cuarta = (r1*r4*r6^2 + r1*r4*r7^2 + r1*r5*r6^2 + r2*r4*r6^2 + r2*r4*r7^2 + r2*r5*r6^2 + r1*r4*r5*r6 + r1*r4*r5*r7 + r2*r4*r5*r6 + 2*r1*r4*r6*r7 + r2*r4*r5*r7 + r1*r5*r6*r7 + 2*r2*r4*r6*r7 + r2*r5*r6*r7);
s_cuarta = simplify(s_cuarta);

s_3 = (4*r1*r4*r6^2*wp + 4*r1*r4*r7^2*wp + 4*r1*r5*r6^2*wp + 4*r2*r4*r6^2*wp + 4*r2*r4*r7^2*wp + 4*r2*r5*r6^2*wp + 4*r1*r4*r5*r6*wp + 4*r1*r4*r5*r7*wp + 4*r2*r4*r5*r6*wp + 8*r1*r4*r6*r7*wp + 4*r2*r4*r5*r7*wp + 4*r1*r5*r6*r7*wp + 8*r2*r4*r6*r7*wp + 4*r2*r5*r6*r7*wp + 3*a0*r1*r4*r6^2*wp + a0*r1*r4*r7^2*wp + 3*a0*r1*r5*r6^2*wp + 2*a0*r2*r4*r6^2*wp + 2*a0*r2*r5*r6^2*wp + 3*a0*r1*r4*r5*r6*wp + 2*a0*r1*r4*r5*r7*wp + 2*a0*r2*r4*r5*r6*wp + 4*a0*r1*r4*r6*r7*wp + a0*r2*r4*r5*r7*wp + 2*a0*r1*r5*r6*r7*wp + 2*a0*r2*r4*r6*r7*wp + a0*r2*r5*r6*r7*wp);
s_3 = collect(s_3, wp);
s_3 = simplify(s_3);

%sin wp
s_3_nueva = 4*r1*r4*r6^2 + 4*r1*r4*r7^2 + 4*r1*r5*r6^2 + 4*r2*r4*r6^2 + 4*r2*r4*r7^2 + 4*r2*r5*r6^2 + 4*r1*r4*r5*r6 + 4*r1*r4*r5*r7 + 4*r2*r4*r5*r6 + 8*r1*r4*r6*r7 + 4*r2*r4*r5*r7 + 4*r1*r5*r6*r7 + 8*r2*r4*r6*r7 + 4*r2*r5*r6*r7 + 3*a0*r1*r4*r6^2 + a0*r1*r4*r7^2 + 3*a0*r1*r5*r6^2 + 2*a0*r2*r4*r6^2 + 2*a0*r2*r5*r6^2 + 3*a0*r1*r4*r5*r6 + 2*a0*r1*r4*r5*r7 + 2*a0*r2*r4*r5*r6 + 4*a0*r1*r4*r6*r7 + a0*r2*r4*r5*r7 + 2*a0*r1*r5*r6*r7 + 2*a0*r2*r4*r6*r7 + a0*r2*r5*r6*r7;
s_3_nueva = collect(s_3_nueva, a0);
%(3*r1*r4*r6^2 + r1*r4*r7^2 + 3*r1*r5*r6^2 + 2*r2*r4*r6^2 + 2*r2*r5*r6^2 + 3*r1*r4*r5*r6 + 2*r1*r4*r5*r7 + 2*r2*r4*r5*r6 + 4*r1*r4*r6*r7 + r2*r4*r5*r7 + 2*r1*r5*r6*r7 + 2*r2*r4*r6*r7 + r2*r5*r6*r7)*a0 + 4*r1*r4*r6^2 + 4*r1*r4*r7^2 + 4*r1*r5*r6^2 + 4*r2*r4*r6^2 + 4*r2*r4*r7^2 + 4*r2*r5*r6^2 + 4*r1*r4*r5*r6 + 4*r1*r4*r5*r7 + 4*r2*r4*r5*r6 + 8*r1*r4*r6*r7 + 4*r2*r4*r5*r7 + 4*r1*r5*r6*r7 + 8*r2*r4*r6*r7 + 4*r2*r5*r6*r7


%simplifico ao^1

s_3_ao = 3*r1*r4*r6^2 + r1*r4*r7^2 + 3*r1*r5*r6^2 + 2*r2*r4*r6^2 + 2*r2*r5*r6^2 + 3*r1*r4*r5*r6 + 2*r1*r4*r5*r7 + 2*r2*r4*r5*r6 + 4*r1*r4*r6*r7 + r2*r4*r5*r7 + 2*r1*r5*r6*r7 + 2*r2*r4*r6*r7 + r2*r5*r6*r7;
s_3_ao = simplify(s_3_ao);

%simplifico ao^0

s_3_ind = 4*r1*r4*r6^2 + 4*r1*r4*r7^2 + 4*r1*r5*r6^2 + 4*r2*r4*r6^2 + 4*r2*r4*r7^2 + 4*r2*r5*r6^2 + 4*r1*r4*r5*r6 + 4*r1*r4*r5*r7 + 4*r2*r4*r5*r6 + 8*r1*r4*r6*r7 + 4*r2*r4*r5*r7 + 4*r1*r5*r6*r7 + 8*r2*r4*r6*r7 + 4*r2*r5*r6*r7;
s_3_ind = simplify(s_3_ind);

%entonces 
s_3_nueva = (s_3_ao*a0 + s_3_ind)*wp;

%s_2

s_2 = (6*r1*r4*r6^2*wp^2 + 6*r1*r4*r7^2*wp^2 + 6*r1*r5*r6^2*wp^2 + 6*r2*r4*r6^2*wp^2 + 6*r2*r4*r7^2*wp^2 + 6*r2*r5*r6^2*wp^2 + 9*a0*r1*r4*r6^2*wp^2 + 3*a0*r1*r4*r7^2*wp^2 + 9*a0*r1*r5*r6^2*wp^2 + 6*a0*r2*r4*r6^2*wp^2 + 6*a0*r2*r5*r6^2*wp^2 + 3*a0^2*r1*r4*r6^2*wp^2 + a0^2*r1*r4*r7^2*wp^2 + 3*a0^2*r1*r5*r6^2*wp^2 + a0^2*r2*r4*r6^2*wp^2 + a0^2*r2*r4*r7^2*wp^2 + a0^2*r2*r5*r6^2*wp^2 + 6*r1*r4*r5*r6*wp^2 + 6*r1*r4*r5*r7*wp^2 + 6*r2*r4*r5*r6*wp^2 + 12*r1*r4*r6*r7*wp^2 + 6*r2*r4*r5*r7*wp^2 + 6*r1*r5*r6*r7*wp^2 + 12*r2*r4*r6*r7*wp^2 + 6*r2*r5*r6*r7*wp^2 + 9*a0*r1*r4*r5*r6*wp^2 + 6*a0*r1*r4*r5*r7*wp^2 + 6*a0*r2*r4*r5*r6*wp^2 + 12*a0*r1*r4*r6*r7*wp^2 + 3*a0*r2*r4*r5*r7*wp^2 + 6*a0*r1*r5*r6*r7*wp^2 + 6*a0*r2*r4*r6*r7*wp^2 + 3*a0*r2*r5*r6*r7*wp^2 + 3*a0^2*r1*r4*r5*r6*wp^2 + a0^2*r1*r4*r5*r7*wp^2 + a0^2*r2*r4*r5*r6*wp^2 + 3*a0^2*r1*r4*r6*r7*wp^2 + a0^2*r1*r5*r6*r7*wp^2 + a0^2*r2*r4*r6*r7*wp^2);
s_2 = collect(s_2, [wp a0]);
s_2 = simplify(s_2)





