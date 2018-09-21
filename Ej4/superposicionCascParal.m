med=csvread('3etapaParaleloAten.csv');
sim=csvread('simAtenuacion.csv');

maginitud=figure('Name','Bode magitud','NumberTitle','off');

semilogx(med(:,1),med(:,2),'LineWidth',3);

hold on;

semilogx(sim(:,1),sim(:,2),'LineWidth',2);
formataxes('', 'Frecuencia (Hz)', 'Mangnitud (dB)', ... % titulo y ejes
                    'Paralelo','Cascada')% legends
hold off;

fas=figure('Name','Bode magitud','NumberTitle','off');

semilogx(med(:,1),(med(:,3)),'LineWidth',3);
hold on;

semilogx(sim(:,1),wrapTo360(sim(:,3)),'LineWidth',2);

formataxes('', 'Frecuencia (Hz)','Fase ($\circ$)', ... % titulo y ejes
                    'Paralelo','Cascada')% legends
hold off;