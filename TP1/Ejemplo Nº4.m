%%-------------------------------------------------------------------------------------------------------------------------------
%%Abrir un diario, generar las siguientes variables a=1, b=2, c=[1 2 3], D=[4 5 6]’, F=[ 1 2 3; 4 5 6].
%%Listar las variables generadas // almacenar los escalares en un archivo “escalares” //
%%almacenar el resto de las variables en otro archivo llamado “otros”.
%%Borrar las variables // cargar las variables del archivo otros // ver su tamaño //cerrar el diario.
%%------------------------------------------------------------------------------------------------------------------------------

%Seguimiento del codigo, abrir diario
diary('Ejercicio N4');
diary on;

%Escalar
a=1; 
b=2;

%Vectores
c=[1 2 3]; 
D=[4 5 6]';

%Matrices
F=[ 1 2 3; 4 5 6];

%listar nombre de las variables
who

%guardar variables en archicos
save('escalares', 'b', 'a');
save('otros', 'c', 'D', 'F');

%borrar variables
clear;

%cargar variables
load('otros');

%ver tamaño
whos -file 'otros'

%ver tamaño de las variables
size(c)
size(D)
size(F)

%Cerrar diario
diary off;
