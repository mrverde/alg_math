function[solucion,c]=newtonvv(x,tol)
%Funcion que busca la solucion de un sistema de ecuaciones por el metodo de newton-raphson
%NECESITA LAS FUNCIONES NEWTONVV_ECUACIONES Y NEWTON_MATRIZJACOBIANA
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%x es el vector que contiene la condicion inicial 
%tol es la tolerancia 
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%solucion es la solucion del sistema
%c es el numero de iteraciones necesarias para llegar a la solucion

format short
c=1;
 z=-newtonvv_matrizjacobiana(x)\newtonvv_ecuaciones(x)';
 while norm(z,inf)>=tol
   x=x+z';
   z=-newtonvv_matrizjacobiana(x)\newtonvv_ecuaciones(x)';
   c=c+1;
 end
 solucion = (x+z')';

