%-----------------------------------------------------------------------------------------------------------------------------
%Obtener el Root locus completo de la siguiente función de transferencia 
%Gs=s/s^3 + 5 s^2 + 4 s + 20. Colocar la grilla y titulo.
%-----------------------------------------------------------------------------------------------------------------------------

%numerador de la funcion transferencia
num = [1 0];

%denumerador de la funcion transferencia
dem = [1 5 4 20];

Gs = tf(num, dem);
rlocus(Gs);
hold;
rlocus(-Gs);
grid;
title('RootLocus de Gs=s/s^3 + 5 s^2 + 4 s + 20');

