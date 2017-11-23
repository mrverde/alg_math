function [T]=metodo_trapecio(f,a,b,n)
%Programa que calcula la integral definida de una funcion por el metodo del trapecio
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
% - f es el integrando, dado como una cadena de caracteres ’f’
% - a y b son los extremos inferior y superior del intervalo de integracion
% - n es el numero de subintervalos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
% - T es la aproximacion obtenida con la regla compuesta del trapecio

h=(b-a)/n;
% nodos interiores
xint=a+h*[1:n-1];
% valores de f en los nodos interiores
fint=feval(f,xint);
% valor aproximado de la integral mediante el metodo del trapecio
T=h*(feval(f,a)+feval(f,b)+2*sum(fint))/2;