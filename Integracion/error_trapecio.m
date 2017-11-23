function []=error_trapecio(f,a,b,error)
%Funcion que sirve para obtener el numero de intervalos necesarios en una integral definida para obtener un error determinado por el metodo del trapecio
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%f es la funcion a integrar por el metodo del trapecio
% a es un punto del intervalo
% b es un punto del intervalo
% error es el error que queremos conseguir

%Ejemplo de invocacion -> error_trapecio('funcionprueba2',0,1,10^(-6))
format long
i=1;
errf=1;
while errf>=10^(-6)
i=i+1;
AprT(i)=metodo_trapecio('funcionprueba2',0,1,i);
if i>2
errf=abs(AprT(i)-AprT(i-1));
err(i)=errf;
end
end
'aproximacion al error absoluto'
errf
'aproximacion anterior a la integral'
AprT(i-1)
'aproximacion final a la integral'
AprT(i)
'alcanzada tomando el siguiente numero de subintervalos'
i