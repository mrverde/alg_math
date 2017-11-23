function[resultado]=alg_biseccionrec_polinomio(vectval,a,b,error,iter,contador)
%Esta funcion busca la raiz entre dos puntos de un polinomio mediante un algoritmo de biseccion recursivo
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%vectval es el vector que contiene los coeficientes de un polinomio
%a es el punto por debajo de 0
%b es el punto por encima de 0
%error es el error minimo que queremos obtener
%iter es el numero de iteraciones del algoritmo. Por defecto asigna 100. El máximo es 497
%contador es una variable fundamental para que funcione la recursividad. No asignar valor
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%resultado es la raiz

%Ejemplo de invocacion:  alg_biseccionrec_polinomio([3 1 10],0,2,0.000000001)

%Establecemos el formato long para trabajar con numeros con 15 decimales
format long

%Este bloque comprueba si se ha asignado la variable de las iteraciones.
%Por defecto asigna 100 iteraciones
if exist('iter','var')
else
	iter = 100;
end
    
%Este bloque asigna automaticamente el valor 1 al contador
%Es fundamental para la recursividad. No tocar
if exist('contador','var')
	contador = contador + 1;
else
	contador = 1;
end

%Este bloque evalua la funcion y calcula la media del valor absoluto
media(contador) = (a+b)/2;
fa(contador) = polyval(vectval,a);
fb(contador) = polyval(vectval,b);
fmedia(contador) = polyval(vectval,media(contador));

%Este bloque es el que resuerve la recursividad
if fa.*fb>0
	disp('No hay raiz entre los puntos dados')
elseif a==b 
	disp('A y B son iguales. Prueba a introducirlos al reves')
else
	if abs(fmedia(contador))<error|contador==iter|contador==497
	  fprintf('\nSe han hecho %d iteraciones. El resultado es:\n',contador);
	  disp(media(contador))
	elseif fmedia(contador)> 0
	  alg_biseccionrec_polinomio(vectval,a,media(contador),error,iter,contador);
	elseif fmedia(contador)< 0
	  alg_biseccionrec_polinomio(vectval,media(contador),b,error,iter,contador);
	end
	 
end
end