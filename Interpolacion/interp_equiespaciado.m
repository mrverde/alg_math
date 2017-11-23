function[p]=interp_equiespaciado(grado,a,b,npuntos,plotdown,plotup)
%Funcion que calcula los puntos equiespaciados para realizar la interpolacion
%%%%%%%%%%%%%%%%ENTRADA%%%%%%%%
%grado es el grado del polinomio que queremos obtener
%a es un punto del intervalo 
%b es el otro punto del intervalo
%npuntos es el numero de puntos equiespaciados a obtener para dibujar la funcion
%plotdown es el limite inferior de la gráfica que exportamos
%plotup es el limite superior de la grafica que exportamos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%
%p es el valor de los coeficientes del polinomio de interpolacion

%ejemplo de invocacion -> [POL]=interp_equiespaciado(5,0,5,300,-1,2)

%eleccion de n+1 puntos igualmente espaciados en el intervalo que le digamos
nodos=linspace(a,b,grado+1); %Es n+1 porque para generar una recta de regresion necesitamos 2 puntos, un polinomio cuadratico 3, etc...

%valores de la funcion en los nodos
valores=finterpolacion(nodos);

%polinomio de interpolacion
p=polyfit(nodos,valores,grado);

%Aqui generamos el numero de puntos igualmente espaciados dentro del intervalo 
t=linspace(a,b,npuntos);

%dibujo de la funcion, los nodos y su polinomio interpolador
plot(t,finterpolacion(t),'r',nodos,valores,'r*',t,polyval(p,t),'k')

%ejes de la grafica
axis([a,b,plotdown,plotup])

%le ponemos titulo
title(grado)
end