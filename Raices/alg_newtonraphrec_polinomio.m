function[]=alg_newtonraphrec_polinomio(vectval,a,iter,contador)
%Esta funcion busca la raiz de un polinomio mediante el metodo de newton-raphson
%%%%%%%%%%%%ENTRADA%%%%%%%%%%%%%
%vectval es un vector con los coeficientes de un polinomio
%a es el punto en el que queremos que empiecen las iteraciones
%iter es el numero de iteraciones del algoritmo. El máximo es 497
%contador es una variable fundamental para que funcione la recursividad. No asignar valor

%Ejemplo de invocacion:  alg_newtonraphrec_polinomio([1,0,2,4],6)

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

%Este bloque evalua el punto a en la ecuacion y en su derivada. Despues
%realiza el calculo
pfun(contador) = polyval(vectval,a);
vectder = polyder(vectval);
pder(contador) = polyval(vectder,a);
puntos(contador) = a - (pfun(contador)/pder(contador));

%En este bloque se decide si acabar las iteraciones o seguir mediante
%recursividad
if contador==iter|contador==497|puntos(contador)==a
	 fprintf('\nSe han hecho %d iteraciones. El resultado es:\n',contador);
	 disp(puntos(contador))
else
    alg_newtonraphrec_polinomio(vectval,puntos(contador),iter,contador)
end


end