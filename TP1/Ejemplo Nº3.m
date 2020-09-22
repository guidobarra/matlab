%%------------------------------------------------------------------------------------------------------------------------------
%   Analice los siguientes nombres de variables% 
%   ¿Cuales están permitidos?                  %
%%------------------------------------------------------------------------------------------------------------------------------

%OK, esta permitido%
test = 1;  

%OK, esta permitido%
Test = 1;  

%ERROR, no esta permitido debido a que if es una palabra reservada%
if  = 1;  
    
%ERROR, no esta permitido debido a que el nombre de la variable no %
%tiene que contener caracteres especiales como ejemplo el "-"%
mi-libro = 1; 

%OK, esta permitido%
mi_libro = 1; 

%ERROR, no esta permitido debido a que el nombre de la variable debe %
%comenzar o empezar con una letra%
1ergrupo = 1;

%OK, esta permitido%
grupo_uno = 1;

%OK, esta permitido%
zzaAbc = 1;

%ERROR, no esta permitido debido a que el nombre de la variable no %
%tiene que contener caracteres especiales como ejemplo el "?" o "#"%
z34wAwy?#15 = 1;

%OK, esta permitido%
sin = 1;

%OK, esta permitido%
log = 1;
