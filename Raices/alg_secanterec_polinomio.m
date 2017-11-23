function[]=alg_secanterec_polinomio(vectval,x0,x1,error,iter,contador)
%Esta funcion busca la raiz entre dos puntos de un polinomio mediante el algoritmo de la secante
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%vectval es el vector que contiene los coeficientes de un polinomio
%x0 es el punto de inicio del algoritmo
%x1 es el punto de la primera iteracion
%error es el error minimo que queremos obtener
%iter es el numero de iteraciones del algoritmo. Por defecto asigna 100. El máximo es 497
%contador es una variable fundamental para que funcione la recursividad. No asignar valor

%Ejemplo de invocacion:  alg_secanterec_polinomio([1 0 0 -1 -1 -2],5,10,10^(-7))

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
fx0 = polyval(vectval,x0);
fx1 = polyval(vectval,x1);
x2 = x1-(((x1-x0)*fx1)/(fx1-fx0));


%Este bloque es el que resuerve la recursividad
if x0==x1 
	disp('A y B son iguales.')
else

	if abs(x2-x1)<error|contador==iter|contador==497
	  fprintf('\nSe han hecho %d iteraciones. El resultado es:\n',contador);
	  disp(x2)
    else
	  alg_secanterec_polinomio(vectval,x1,x2,error,iter,contador);
	end
	 
%end

end