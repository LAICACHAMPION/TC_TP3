med=csvread('bodeMax.csv');
sim=csvread('simAmpl.csv');

maginitud=figure('Name','Bode magitud','NumberTitle','off');

semilogx(med(:,1).*1000,20*log10(med(:,3)./med(:,2)),'-o','LineWidth',3);

hold on;

semilogx(sim(:,1),sim(:,2),'LineWidth',2);
formataxes('', 'Frecuencia (Hz)', 'Mangnitud (dB)', ... % titulo y ejes
                    'Medici\''on','Simulaci\''on ')% legends
hold off;

fas=figure('Name','Bode magitud','NumberTitle','off');

semilogx(med(:,1).*1000,med(:,4),'-o','LineWidth',3);
hold on;

semilogx(sim(:,1),wrapTo360(sim(:,3)),'LineWidth',2);

formataxes('', 'Frecuencia (Hz)','Fase ($\circ$)', ... % titulo y ejes
                    'Medici\''on','Simulaci\''on ')% legends
hold off;