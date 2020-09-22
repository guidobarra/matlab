%----------------------------------------------------------------------------------------------------------------------------
%1-Grafique x contra y=sen(x). Sea x que varía de 0 a 2”pi” en incrementos de 0.1”pi”.
%2-Agregue un titulo y una etiqueta al grafico.
%3-Grafique x contra “y1” y “y2” para y1=sen(x) y y2=cos(x). Sea x que varía de 0 a 2”pi”
%en incrementos de 0.1”pi”. Agregue un titulo y una etiqueta al grafico.
%4-Vuelva a crear el grafico anterior, pero haga la línea sen(x) rayada y roja. Haga la
%lineados(x) verde y punteada.
%5-Agregue una leyenda grafica anterior.
%6-Ajuste los ejes de modo que el eje x vaya de -1 a 2”pi”+1 y el eje y de -1.5 a 1.5.
%7-Cree un nuevo vector, a=cos(x). x que varía de 0 a 2”pi” en incrementos de 0.1”pi”.
%8-Grafique solo a (plot(a)) y observe el resultado. Compare el resultado con el grafico
%generado por plot(x,a), sacar conclusiones.
%-----------------------------------------------------------------------------------------------------------------------------

%1-Grafique x contra y=sen(x). Sea x que varía de 0 a 2”pi” en incrementos de 0.1”pi”.
x=[0:0.1*pi:2*pi];
y=sin(x);
plot(x, y);

%2-Agregue un titulo y una etiqueta al grafico.
title('funcion seno(x)');
xlabel('x');

%3-Grafique x contra “y1” y “y2” para y1=sen(x) y y2=cos(x). Sea x que varía de 0 a 2”pi” 
%en incrementos de 0.1”pi”. Agregue un titulo y una etiqueta al grafico.
x=[0:0.1*pi:2*pi];
y1=sin(x);
plot(x, y1);
hold
y2=cos(x);
plot(x, y2);
title('funcion seno(x) y coseno(x)');
xlabel('x');

%4-Vuelva a crear el grafico anterior, pero haga la línea sen(x) rayada y roja. 
%Haga la lineados(x) verde y punteada.
x=[0:0.1*pi:2*pi];
y1=sin(x);
plot(x, y1, 'r--');
hold
y2=cos(x);
plot(x, y2,'g:');

%5-Agregue una leyenda grafica anterior.
title('funcion seno(x) rayado-- y coseno(x) punteado :');
xlabel('x');

%6-Ajuste los ejes de modo que el eje x vaya de -1 a 2”pi”+1 y el eje y de -1.5 a 1.5.
axis([-1, (2*pi+1), -1.5, 1.5]);

%7-Cree un nuevo vector, a=cos(x). x que varía de 0 a 2”pi” en incrementos de 0.1”pi”.
x=[0:0.1*pi:2*pi];
a=cos(x);

%8-Grafique  solo a (plot(a)) y observe el resultado. Compare el resultado con el 
%grafico generado por plot(x,a).
plot(a);
plot(x,a);

% son distintos el rango de x no es el mismo en los dos graficos
