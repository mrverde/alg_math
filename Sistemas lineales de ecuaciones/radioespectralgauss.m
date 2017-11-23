function re=radioespectralGaussSeidel(A)
%Funcion que recibe una matriz y devuelve el maximo de sus autovectores. Para el metodo de Gauss-Seidel
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%A es la matriz
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%re es el valor del máximo de los autovectores

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% El radio espectal sirve para saber si el sistema de ecuaciones tiene
% solución unica. Esto sucede cuando el valor máximo de los autovectores
% (eigenvectors) es menor que 1. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
format long
 
% calculo de las matrices D,L,U
D=diag(diag(A)); L=tril(A)-D; U=triu(A)-D;
% calculo del radio espectral 
re=max(abs(eig(-inv(D+L)*U)));