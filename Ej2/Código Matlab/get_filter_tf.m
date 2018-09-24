function H = get_filter_tf(filter_type, putoelquelee)

if nargin == 2
    syms s Zc_LP Zgyr R_LP C_LP positive;
    Zgyr = get_zin_gyr('todo', 'l');
    
else

s = tf('s');

R_HP = 1800;
R_LP = 1800;
R_BP = 1800;
R_BR = 1800;

C_HP = 22e-9;
C_LP = 22e-9;
C_BP = 22e-9;
C_BR = 82e-9;

Zc_HP = 1/(s*C_HP);
Zc_LP = 1/(s*C_LP);
Zc_BP = 1/(s*C_BP);
Zc_BR = 1/(s*C_BR);

Zgyr = get_zin_gyr('todo');

end


if strcmp(filter_type, 'HP')
    H = Zgyr/(Zgyr + Zc_HP + R_HP);
elseif strcmp(filter_type, 'LP')
    H = Zc_LP/(Zgyr + Zc_LP + R_LP);
elseif strcmp(filter_type, 'BP')
    H = (Zc_BP^(-1) + Zgyr^(-1))^(-1)/((Zc_BP^(-1) + Zgyr^(-1))^(-1) + R_BP);
elseif strcmp(filter_type, 'BR')
    H = (Zgyr+Zc_BR)/(Zgyr + Zc_BR + R_BR);
end