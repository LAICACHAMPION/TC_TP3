R1 = sym('R1');
R2 = sym('R2');
R3 = sym('R3');
K= sym('K');
C1 = sym('C1');
C2 = sym('C2');
S=sym('S');


Pt1=R2*K;
Pt2=R2*(1-K);

Zc1=1/(S*C1);
Zc2=1/(S*C2);

Ra=(Zc1*Pt1)/(Pt1+Pt2+Zc1);

Rb=(Zc1*Pt2)/(Pt1+Pt2+Zc1);

Rc=(Pt1*Pt2)/(Pt1+Pt2+Zc1);


k1=Ra+R1;

k2=Rb+R1;

k3=Rc+Zc2;


t1=(k1*k2+k1*k3+ k3*k2)/k3;

t2=(k1*k2+k1*k3+ k3*k2)/k2;

t3=(k1*k2+k1*k3+ k3*k2)/k1;


x2=1/((1/R3)+(1/t2));
x3=1/((1/R3)+(1/t3));


H=-x3/x2
H=simplify(H);
pretty(H);








