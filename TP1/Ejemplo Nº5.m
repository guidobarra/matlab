%----------------------------------------------------------------------------------------
% Equacion de de los gases ideales
%Cargar los siguientes valores P=100; T=300; V=1000; MW=29; R=8.314 y 
%calcular el valor de m. El valor de m se calcula como el producto de “n” por “MW” 
%donde “n” es igual al cociente de (PxV) sobre (RxT).
%----------------------------------------------------------------------------------------

P=100; 
T=300; 
V=1000; 
MW=29; 
R=8.314;

%fomato por Default 1.1627e+03
m=MW*( (P*V) / (R*T) )

%formato long 1.162697458102799e+03
format long;
m

%formato bank 1162.70 dos decimales
format bank;
m

%formato rat 49996/43
format rat;
m
