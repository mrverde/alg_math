function [sol,niteraciones,error]=metodo_gauss_seidel(A,B,x0,cotaerror)
%Funcion que calcula la solucion de un sistema de ecuaciones lineal mediante el metodo de Gauss-Seidel
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%A es la matriz del sistema de ecuaciones
%B es el vector que contiene los terminos independientes
%x0 es el punto en el que queremos empezar a hacer las iteraciones. Se usa el vector nulo
%cotaerror Es la tolerancia que queremos
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%sol es la solucion
%niteraciones es el numero de iteraciones para llegar a la solucion
%error es el la diferencia de la variacion entre una iteracion y su iteracion siguiente

%Ejemplo de invocacion -> K=[0.3 -0.1189 -0.0684 -0.1011 0 0;-0.189 0.4 -0.2111 -0.0059 0 0;-0.0684 -0.2111 0.7 -0.2378 -0.0059 -0.1011; -0.1011 -0.0059 -0.2378 0.74 -0.2111 -0.0684;0 0 -0.0059 -0.2111 0.43 -0.1189;0 0 -0.1011 -0.0684 -0.1189 0.34]
%R=[40;0;0;50;0;35]; [solucion,iteraciones,error]=metodo_gauss_seidel(K,R,zeros(6,1),10^(-4))

D=diag(diag(A));
U=triu(A)-D;
L=tril(A)-D;
M=-inv(D+L)*U;
N=inv(D+L)*B;
cont=1;
xant=x0;
xsig=M*xant+N;

while norm(xsig-xant,inf)>cotaerror
    cont=cont+1;
    xant=xsig;
    xsig=M*xant+N;
end

sol=xsig;
niteraciones=cont;
error=norm(xsig-xant,inf);