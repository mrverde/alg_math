function [S]=metodo_simpson(f,a,b,m)
%Programa que calcula la integral definida de una funcion por el metodo de simpson
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
% - f es el integrando, dado como una cadena de caracteres ’f’
% - a y b son los extremos inferior y superior del intervalo de
% integracion
% - 2*m es el numero de subintervalos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
% - S es la aproximacion obtenida con la regla compuesta de Simpson

h=(b-a)/(2*m);
% nodos impares
ximp=a+h*[1:2:2*m-1];
% valores de f en los nodos impares
fimp=feval(f,ximp);
%nodos pares
xpar=a+h*[2:2:2*m-2];
% valores de f en los nodos pares
fpar=feval(f,xpar);
% valor aproximado de la integral mediante Simpson
S=h*(feval(f,a)+feval(f,b)+4*sum(fimp)+2*sum(fpar))/3;