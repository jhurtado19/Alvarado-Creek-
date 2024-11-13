% full normal spectrum

figure;
fullspec(wlvl,t_usgs,'b');
hold on;
fullspec2(trp,t_wql,'m');
fullspec(cdom,t_wql,'c');
fullspec2(temp,t_wql,'r');
grid on;
title('Full Normal Distribution - All Parameters, Sep 19 - Oct 10')
legend('Water Level', 'Tryp', 'CDOM', 'Temp');
