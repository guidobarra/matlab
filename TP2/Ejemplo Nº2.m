%-----------------------------------------------------------------------------------------------------------------------------
%Obtener la respuesta a un escal�n de GS=25/s^2+4*s+25
%Agregar al grafico la grilla y el titulo �Respuesta a un escal�n de Gs=25/s^2+4*s+25
%-----------------------------------------------------------------------------------------------------------------------------

%numerador de la funcion transferencia
num = 25;

%denumerador de la funcion transferencia
dem = [1 4 25];

%funcion transferencia
Gs=tf(num, dem)

%Graficar Respuesta a un escal�n de la funcion transferencia
step(Gs);

%Agregar Grilla y titulo
grid;
title('Respuesta a un escal�n de Gs=25/s^2+4*s+25');