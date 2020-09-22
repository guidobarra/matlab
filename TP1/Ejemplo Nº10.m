%---------------------------------------------------------------------------------------------------------------------------------------------
%Cargar los siguientes polinomios, a=S^2+5*S+6, b=S+1, c=3.
%Calcular la suma de d=b+c.
%Calcular el producto de e=a*d.
%Hallar las raíces de e.
%Generar un vector tiempo (t=[0:1:10])
%Calcular el valor del polinomio e en cada valor de t.
%Cargar la matriz A=[-1 0 0 ; 0 -2 0; 0 0 -3], y hallar el polinomio característico de la matriz A.
%Hallar las raíces del polinomio hallado en el punto anterior.
%---------------------------------------------------------------------------------------------------------------------------------------------

%Cargar los siguientes polinomios, a=S^2+5*S+6, b=S+1, c=3.
a = [1 5 6];
b = [0 1 1];
c = [0 0 3];

%Calcular la suma de d=b+c.
d = plus(b, c)

%Calcular el producto de e=a*d.
e = conv(a, d)

%Hallar las raíces de e.
roots(e)

%Generar un vector tiempo (t=[0:1:10])
t=[0:1:10];

%Calcular el valor del polinomio e en cada valor de t.
polyval(e, t)

%Cargar la matriz A=[-1 0 0 ; 0 -2 0; 0 0 -3]
A=[-1 0 0; 0 -2 0; 0 0 -3]

%hallar el polinomio característico de la matriz A.
polyCaracDeMat=poly(A)

%Hallar las raíces del polinomio hallado en el punto anterior.
raicesDelPolyCarac=roots(polyCaracDeMat)
