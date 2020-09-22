%---------------------------------------------------------------------------------------------------------------------------------------------
%Crear un diario llamado Gilbert.
%Ver fecha y hora.
%Limpiar las variables.
%Definir formato extendido.
%Generar la matiz A = [ 2 3 2 1; -2 -3 0 0; -2 -2 -4 0; -2 -2 -2 -5]
%Determinar los autovalores.
%Generar la matriz de autovectores de A, llamarla T.
%Invertir T, llamarla T2.
%Generar el vector columna B = [ 1 -2 2 -1]
%Multiplicar BN = T2 * B
%Generar el vector fila C = [7 6 4 2]
%Multiplicar CN = C * T
%Ver el rango de CN y BN, guardar el valor obtenido en Cr y Br respectivamente.
%Salvar las variables en Gilbert.
%Cerrar diario.
%---------------------------------------------------------------------------------------------------------------------------------------------

%Crear un diario llamado Gilbert.
diary('Gilbert');
diary on;

%obtner fecha y hora actual
fecha = clock
anio = fecha(1);
mes = fecha(2);
dia = fecha(3);
hora = fecha(4);
min = fecha(5);

%imprimir fecha y hora actual
fprintf('\nLa fecha de hoy: %d/%d/%d \nHora: %d-%d\n', anio, mes, dia, hora, min);

%borrar variables
clear;

%Generar matriz A
A = [ 2 3 2 1; -2 -3 0 0; -2 -2 -4 0; -2 -2 -2 -5]

%Determinar los autovalores de la matriz A
autoValores = eig(A)

%Generar la matriz de autovectores de A, llamarla T.
[T E] = eig(A)

%Invertir T, llamarla T2
T2 = inv(A)

%Generar el vector columna B = [ 1 -2  2 1]
B = [ 1 -2  2 1]'

%Multiplicar BN = T2 * B 
BN = T2 * B

%Generar el vector fila C = [7 6 4 2]
C = [7 6 4 2]

%Multiplicar CN = C * T
CN = C * T

%Ver el rango de CN y BN, guardar el valor obtenido en Cr y Br respectivamente.
Cr = rank(CN)
Br = rank(CN)

%Salvar las variables en Gilbert
save('Gilbert');

%Cerrar diario
diary off;