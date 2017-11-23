function[max]=max_discreto_equiespaciado(numnodos,a,b,step)
%Programa que coge la funcion finterpolacion y calcula el error que se obtiene con diferente numero de nodos. Usa nodos de equidistantes
%NECESITA LA FUNCION FINTERPOLACION
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%numnodos es el numero de nodos que queremos para la interpolacion
%a es un punto del intervalo 
%b es el otro punto del intervalo
%step es el paso para calcular el maximo discreto
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%max es el maximo de error obtenido de todos los nodos

%Ejemplo de invocacion: [max]=max_discreto_equiespaciado([2:6],1,3,.02)

%contador
c=0;
for n=numnodos %AQUÍ REPRESENTAMOS EL NUMERO DE NODOS
    %define la abscisa del error
    c=c+1;
    absc(c)=n;
    %ponemos el maximo de |f(x)-p(x)| a cero
    max(c)=0;
    %calculo del polinomio de interpolacion con n+1 nodos igualmente espaciados en [a,b]
    nodos=linspace(a,b,n+1);
    valores=finterpolacion(nodos);
    p=polyfit(nodos,valores,n);
        %calculo del maximo discreto de |finterpolacion(k)-p(k)| aqui va el punto de inicio, el punto final y el step
        for k=a:step:b
            if abs(finterpolacion(k)-polyval(p,k))>max(c)
                max(c)=abs(finterpolacion(k)-polyval(p,k));
            end
        end
end
%dibuja n frente al error cometido para dicho n
plot(absc,max),grid