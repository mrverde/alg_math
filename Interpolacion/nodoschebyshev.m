function[nodosche]=nodoschebyshev(b,a, numnodos)
%Funcion que calcula los nodos de chebyshev en el intervalo que le digamos
%%%%%%%%%%%%%%%%ENTRADA%%%%%%%%
%a es un punto del intervalo
%b es un punto del intervalo
%numnodos es el numero de nodos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%
%nodosche es el valor de los nodos de chebyshev


%Ejemplo de invocacion -> [nodos,puntos]=nodoschebyshev(-1,1,5)


for i=1:numnodos+1
    nodosche(i)=((b-a)/2)*cos(((2*i-1)*pi)/(2*(numnodos+1)))+(b+a)/2;
end