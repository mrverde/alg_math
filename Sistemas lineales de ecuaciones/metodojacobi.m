function [solucion,num_iteraciones]=metodojacobi(A,B,punto_inicial,error)
%Funcion que calcula la solucion de un sistema de ecuaciones lineal mediante el metodo de Jacobi
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%A es la matriz del sistema de ecuaciones
%B es el vector que contiene los terminos independientes
%Punto_inicial es el punto en el que queremos empezar a hacer las iteraciones. Normalmente se usa el vector nulo. 
%NOTA - ALGORITMO BAJADO EN INTERNET, EL VECTOR QUE HACE DE PUNTO INICIAL SE PONE AL REVÉS 
%error Es la tolerancia que queremos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%solucion es la matriz de salida
%num_iteraciones es el numero de iteraciones que hizo el algoritmo para llegar a la solucion

%Ejemplo de invocacion -> A = [3 -1 -1; -1 3 1; 2 1 4]; b = [1;3;7]; [solucion]=metodojacobi(A,b,zeros(1,3),10^(-8))

format long
cont_iteraciones=0;
s=size(A);
num_ecuaciones=s(1);

for k=1:num_ecuaciones
    B(k)=B(k)/A(k,k);
    A(k,:)=A(k,:)/A(k,k);
    A(k,k)=0;
end

M=-A;
x_ant=punto_inicial';
x_sig=M*x_ant+B;
deltax_n=x_sig-x_ant;

while norm(deltax_n,inf) > error
    x_sig=M*x_ant+B;
    deltax_n=x_sig-x_ant;
    x_ant=x_sig;
    cont_iteraciones=cont_iteraciones+1;
end

solucion=x_sig;
num_iteraciones=cont_iteraciones;
end