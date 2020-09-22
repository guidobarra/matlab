%Donde la entrada (ángulo de deflexión del elevador, delta e) será 0.2 rad (11 grados), 
%y la salida es el ángulo de inclinación vertical (theta). 
%Hallar un controlador, a través del método de lugar de las raíces, que me permita cumplir 
%con los siguientes requerimientos.
%•	Sobrepico: Menor que el 10% 
%•	Tiempo de Subida: Menor que los 2 segundos 
%•	Tiempo de establecimiento: Menor que los 10 segundos 
%•	Error de estado estacionario: Menor que el 2% 

%Obtenga un gráfico de lugar de raíces con grilla, usando la función de transferencia
%original de la planta. 
num=[1.151 0.1774];
den=[1 0.739 0.921 0];
Gs=tf(num,den)

[ceros,polos,ganancia]=tf2zp(num,den)
step(0.2*num,den);

%condiciones de diseño
Wn=0.9;
zeta=0.52;

%grafico del rl
rlocus (num,den)
sgrid (zeta,Wn)
axis ([-1 0 -2.5 2.5])
hold
rlocus (-num,den)

%compensador
num1=[1.151 0.1774];
den1=[1 0.739 0.921 0];
num2=[1 0.9];
den2=[1 20];
num=conv(num1,num2);
den=conv(den1,den2);
Wn=0.9; 
zeta=0.52;
rlocus (num,den)

%axis ([-3 0 -2 2])
axis ([-10 0 -13 13])
sgrid (zeta,Wn)

%haciendo click con el mause obtengo los polos que quiero
[K, poles]=rlocfind (num,den)

de=0.2;
[numc,denc]=cloop (K*num,den,-1);
step (de*numc,denc)
