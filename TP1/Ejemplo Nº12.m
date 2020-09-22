%----------------------------------------------------------------------------------------------------------------------------
%1-Crear un diario llamado Ejercicio N12.
%2-Generar un vector de tiempo de t = 0 a 10 con intervalos 0.1.
%3-Generar t1 = -1*(1-i)*t, t2 = -1*(1+i)*t, t3 =0*t.
%4-Generar re = (-0.5+0.5i) x e(t1) + (-0.5-0.5i) x e(t2) + 1 x e(t3).
%5-Dibujar “re” en función de “t”.
%6-Colocar el titulo Respuesta el escalón.
%7-Colocar en el eje x, tiempo/seg
%8-Colocar en el eje y, y1/y2/y3.
%9-Salvar las variables en V_Ejercicio6.
%10-Cerrar diario.
%-----------------------------------------------------------------------------------------------------------------------------

%6-1	Crear un diario llamado Ejercicio N12.
diary('Ejercicio N12');
diary on;

%6-2	Ver fecha y hora.
fecha = clock
anio = fecha(1);
mes = fecha(2);
dia = fecha(3);
hora = fecha(4);
min = fecha(5);

fprintf('La fecha de hoy: %d/%d/%d \nHora: %d-%d', anio, mes, dia, hora, min);

%6-3	Escribir datos personales.
alumno = 'Barra Quelca, Guido Alberto'
dni = 39274352
fprintf('Alummno: %s\nDNI: %d', alumno, dni);

%6-4	Generar un vector de tiempo de t = 0 a 10 con intervalos 0.1.
t=[0:0.1:10];

%6-5	Generar t1 = -1*(1-i)*t, t2 = -1*(1+i)*t, t3 =0*t.
t1 = -1*(1-i)*t;
t2 = -1*(1+i)*t; 
t3 =0*t;

%6-6	Generar re = (-0.5+0.5i) x e(t1) + (-0.5-0.5i) x e(t2) + 1 x e(t3).
re = (-0.5+0.5i) * exp(t1) + (-0.5-0.5i) * exp(t2) + 1 * exp(t3);

%6-7	Dibujar  “re” en función de “t”.
plot(t, re);

%6-8	Colocar el titulo Respuesta el escalón.
title('Respuesta el escalón');

%6-9	Colocar en el eje x, tiempo/seg
xlabel('tiempo/seg');

%6-10	Colocar en el eje y,  y1/y2/y3.
ylabel('y1/y2/y3');

%6-11	Salvar las variables en V_Ejercicio12.
save('V_Ejercicio12');

%6-12	Cerrar diario.
diary off;
