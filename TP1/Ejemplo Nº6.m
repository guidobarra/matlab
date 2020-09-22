%----------------------------------------------------------------------------------------
% Defina el formato de dos decimales.
% Cargue las siguientes variables, m=721.9; p=335; V=[3.5 3.15];
% Realice los siguientes cálculos, V=V x 150x109 / 365 / 24 /3600; 
% Divida a “p” por cada elemento del producto m x V y guarde el resultado en una variable llamada “a”
%----------------------------------------------------------------------------------------

%formato bank xxxxxxxx.xx dos decimales
format bank;

m=721.9; 
p=335;
V=[3.5 3.15];

V=V * 150*109 / 365 / 24 /3600;

a=1;

%producto m*V
V=m*V;

for i=V
    a=a*i;%producto de todos los elementos del vector m*V
end

%Divido a “p” por cada elemento del producto m x V
a=p/a
