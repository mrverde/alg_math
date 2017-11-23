function[p]=interp_chebyshev(grado,a,b,npuntos,plotdown,plotup)
%Funcion que calcula los nodos de chebyshev para realizar la interpolacion
%NECESITA LAS FUNCIONES FINTERPOLACION Y NODOSCHEBYSHEV
%%%%%%%%%%%%%%%%ENTRADA%%%%%%%%
%grado es el grado del polinomio que queremos obtener
%a es un punto del intervalo 
%b es el otro punto del intervalo
%npuntos es el numero de puntos equiespaciados a obtener para dibujar la funcion
%plotdown es el limite inferior de la grafica que exportamos
%plotup es el limite superior de la grafica que exportamos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%
%p es el valor de los coeficientes del polinomio de interpolacion

%ejemplo de invocacion -> [POL]=interp_chebyshev(5,0,5,300,-1,2)

%generamos los nodos de chebyshev 
nodos = nodoschebyshev(a,b,grado)

%valores de la funcion en los nodos
valores=finterpolacion(nodos);

%polinomio de interpolacion
p=polyfit(nodos,valores,grado);

%Aqui generamos el numero de puntos igualmente espaciados dentro del intervalo 
t=linspace(a,b,npuntos);

%dibujo de la funcion, los nodos y su polinomio interpolador
plot(t,finterpolacion(t),'b',nodos,valores,'b*',t,polyval(p,t),'c')

%ejes de la grafica
axis([a,b,plotdown,plotup])

%le ponemos titulo
title(grado)
end