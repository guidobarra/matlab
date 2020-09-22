%Donde la entrada (ángulo de deflexión del elevador, delta e) será 0.2 rad (11 grados), 
%y la salida es el ángulo de inclinación vertical (theta). 
%Hallar un controlador, a través del método de bode, que me permita cumplir 
%con los siguientes requerimientos.
%•	Sobrepico: Menor que el 10% 
%•	Tiempo de Subida: Menor que los 2 segundos 
%•	Tiempo de establecimiento: Menor que los 10 segundos 
%•	Error de estado estacionario: Menor que el 2% 


de=0.2;
t=[0:0.1:30];
num=[1.151 0.1774];
den=[1 0.739 0.921 0];
step (de*num,den,t)

bode (num,den)

margin (num,den)

de = 0.2;
t =0:0.01:10;
[numc,denc]=cloop(num,den,-1);
margin(numc,denc)

step (de*numc,denc,t)

num=[1.151 0.1774];
den=[1 0.734 0.921 0];
alead=10;
Tlead=0.3;
aleadtlead=alead*Tlead;
k=1;

numlead=k*[aleadtlead 1];
denlead=[Tlead 1];

num1=conv(num,numlead);
den1=conv(den,denlead);
bode(num1,den1)
margin(num1,den1)

[np,dp]=cloop(num1,den1,-1);
de=0.2;
t=0:0.01:50;
step (de*np,dp,t)

num=[1.151 0.1774];
den=[1 0.739 0.921 0];
alead=100;
Tlead=0.0875
aleadtlead=alead*Tlead;
k=1;

numlead=k*[aleadtlead 1];
denlead=[Tlead 1];

num1=conv(num,numlead);
den1=conv(den,denlead);
bode(num1,den1)

[numc,denc]=cloop(num1,den1,-1);
de=0.2;
t=0:0.01:10;
step (de*numc,denc,t)

num=[1.151 0.1774];
den=[1 0.739 0.921 0];

alead=100;
Tlead=0.0875;
aleadtlead=alead*Tlead;
k=1;

numlead=k*[aleadtlead 1];
denlead=[Tlead 1];

num1=conv(num,numlead);
den1=conv(den,denlead);

Tlag=40;
alag=0.05;
k2=0.8;
at=alag*Tlag;

numlag=k2/alag*[at 1];
denlag=[Tlag 1];

num2=conv(num1,numlag);
den2=conv(den1,denlag);

bode (num2,den2)

[numc2,denc2]=cloop(num2,den2,-1);
step (0.2*numc2,denc2,t)
