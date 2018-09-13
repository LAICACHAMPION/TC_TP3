s = tf('s');
w = 2*pi*logspace(0, 6, 1000);
opt = bodeoptions();
opt.FreqUnits = 'Hz';

w0ideal = 13e3;
Qideal = 4;
w1ideal = w0ideal*(sqrt(1+(1/2/Qideal)^2)-1/2/Qideal);
w2ideal = w0ideal/w1ideal;
f0ideal = w0ideal/2/pi;



Rideal = 2.2e3; R6ideal = 8.8e3; Cideal = 1/w0ideal/Rideal;
Lideal = Rideal^2*Cideal;
Hideal = 2*tf([Lideal/R6ideal, 0], [Lideal*Cideal, Lideal/R6ideal, 1]);

Rcalc = 2.2e3; R6calc = 8.8e3; Ccalc = 10^(-9)/(1/39+1/330);
f0calc = 1/2/pi/Rcalc/Ccalc;
relerrorf0calc = abs(f0ideal-f0calc)/f0ideal*100;

Lcalc = Rcalc^2*Ccalc;
Hcalc = 2*tf([Lcalc/R6calc, 0], [Lcalc*Ccalc, Lcalc/R6calc, 1]);

bode(Hideal, w, opt);
hold on;
bode(Hcalc, w, opt);
grid on;