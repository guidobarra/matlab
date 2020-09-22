%Crear un diario llamado Kalman.
%Limpiar las variables.
%Generar las siguientes matrices y vectores A = [0 0 1 1; 0 0 0 1; -3/50 3/50 0 0; 3/23 -3/23 0 0],
%B= [0;0;-1/50;1/23], C = [ 1 1 0 0].
%Multiplicar AB=AxB, AB2=A^2xB, AB3=A^3xB
%Armar una nueva matriz llamada CO con los vectores B, AB, AB2 y AB3. Cada uno de ellos en una
%columna. CO = [ B AB AB2 AB3]
%Multiplicar CA= CxA, CA2=CxA^2, CA3=CxA^3.
%Armar una nueva matriz llamada O con los vectores C, CA, CA2 y CA3. Cada uno de ellos en una fila.
%O = [ C CA CA2 CA3].
%Obtener el rango de O y CO, guardar el valor obtenido en Ro y Rc.
%Salvar las variables en Kalman.
%Cerrar diario.
%---------------------------------------------------------------------------------------------------------------------------------------------

%Crear un diario llamado Kalman.
diary('Kalman');
diary on;

%Limpiar las variables.
clearvars;
clear;

%Generar las siguientes matrices y vectores 
A = [0 0 1 1; 0 0 0 1; -3/50 3/50 0 0; 3/23 -3/23 0 0]  
B= [0;0;-1/50;1/23]
C = [ 1 1 0 0]

%matrices 4x1
AB=A*B
AB2=A^2*B
AB3=A^3*B

%como columnas
%matriz 4x4
CO = [ B AB AB2 AB3]

%matrices 1x4
CA= C*A
CA2=C*A^2
CA3=C*A^3

%como filas
%matriz 1x16
O = [ C CA CA2 CA3]

%Obtener el rango de O y CO, guardar el valor obtenido en Ro y Rc
Ro = rank(O)
Rc = rank(CO)

%Salvar las variables en Gilbert
save('Kalman');

%Cerrar diario
diary off;
