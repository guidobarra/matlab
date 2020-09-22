%-----------------------------------------------------------------------------------------------------------------------------
%Graficar en un mismo grafico la respuesta al escalón de los siguientes funciones de 
%transferencia, G1s=1/s^2+0.5*s+1 y G2s=11/s^2+0.5*s+4.
%-----------------------------------------------------------------------------------------------------------------------------

%numerador de la funcion transferencia G3
numG1 = 1;

%denumerador de la funcion transferencia G3
demG1 = [1 0.5 1];

%numerador de la funcion transferencia G4
numG2 = 11;

%denumerador de la funcion transferencia G4
demG2 = [1 0.5 4];

%funcion transferencia G1
G1s = tf(numG1, demG1)

%funcion transferencia G2
G2s = tf(numG2, demG2)

step(G1s);
hold
step(G2s);