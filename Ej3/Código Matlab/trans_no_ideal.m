syms va v3me v3ma vout out1 out2
syms i1 i iu3me iu3ma i9 i8 s
syms r1 r8 r9 positive

%seteo el sistema de ecuaciones del circuito 
[VOUT, VP, VOUT1] = solve(...
 v3ma - i9*r9 - va ==0,...
 out2 -i8*r8 - v3ma==0,...
 ==0,...
 
[vout vp vout1]);

VOUT
pretty(VOUT)
