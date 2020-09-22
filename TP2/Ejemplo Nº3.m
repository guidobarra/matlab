%-----------------------------------------------------------------------------------------------------------------------------
%Sea G1s=6.3223(s+1.4235)^2/s y G2s=1/s(s+1)(s+5), las cuales están 
%conectadas en serie y poseen una realimentación negativa unitaria. 
%Obtener la respuesta a un escalón, agregar al grafico la grilla y colocar un titulo.
%-----------------------------------------------------------------------------------------------------------------------------

%numerador de la funcion transferencia G1
numUnoG1 = [1 1.4235];
numDosG2 = 6.3223;
numTotalG1 = conv(numUnoG1, numUnoG1);
numTotalG1 = conv(numTotalG1, numDosG2);

%denumerador de la funcion transferencia G1
demG1 = [1 0];

%funcion transferencia G1
G1 = tf(numTotalG1, demG1);

%numerador de la funcion transferencia G2
numG2 = 1;

%denumerador de la funcion transferencia G2
demUnoG2 = [1 1];
demDosG2 = [1 5];
demTres = [1 0];
demTotalG2 = conv(demUnoG2, demDosG2);
demTotalG2 = conv(demTotalG2, demTres);

%funcion transferencia G2
G2s = tf(numG2, demTotalG2);

%multiplicaciones de las dos funciones
GTotal = G1*G2s;

%Graficar Respuesta a un escalón de la funcion transferencia
step(GTotal);

%Agregar Grilla y titulo
grid;
title('Respuesta a un escalón');
