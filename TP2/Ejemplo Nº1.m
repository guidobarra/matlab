%-----------------------------------------------------------------------------------------------------------------------------
%Considere el sistema de control mostrado en la figura. 
%Obtener polos y ceros a lazo abierto y representarlos.
%-----------------------------------------------------------------------------------------------------------------------------

%numerador de la funcion transferencia
num = [1 2 4];

%denumerador de la funcion transferencia
demUno = [1 0];
demDos = [1 4];
demTres = [1 6];
demCuatro = [1 1.4 1];

demTotal = conv(demUno, demDos);
demTotal = conv(demTotal, demTres);
demTotal = conv(demTotal, demCuatro);


%funcion transferencia
Gs=tf(num, demTotal)

%ceros, polos y K (para esos polos y ceros) de la funcion transferencia
[ceros,polos,K]=tf2zp(num,demTotal)

%numerador y denumerador hallados mediantes los ceros y polos y K
[num2,den2]=zp2tf(ceros,polos,K);

%representar los ceros y polos de la funcion transferencia
pzmap(Gs);

