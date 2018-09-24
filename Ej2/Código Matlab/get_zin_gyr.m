function Zgyr = get_zin_gyr(num_den, syms_H)

if nargin == 2
    syms s Rgyr Cgyr BWP RL positive;
else
    s = tf('s');
    Rgyr = 39e3;
    Cgyr = 10e-9;
    BWP = 3e6;
    RL = 51;
end



K = 1/(1+(s/(2*pi*BWP)));
num = s*Cgyr*Rgyr*RL + RL;
den = s*Cgyr*(Rgyr*(1-K)+RL)+1;

    if nargin == 0
        Zgyr = num/den;
    elseif strcmp(num_den,'num')
        Zgyr = num;
    elseif strcmp(num_den,'den')
        Zgyr = den;    
    elseif strcmp(num_den,'todo')
        Zgyr = num/den;
    end
end
