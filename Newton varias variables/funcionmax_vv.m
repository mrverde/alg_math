function [maximo0,x0]=funcionmax_vv(tol)
%Funcion que busca el maximo en el intervalo que le digamos en un sistema de ecuaciones
%NECESITA LA FUNCION NEWTONVV_ECUACIONES.M 
%tol es el step de busqueda
%%%%%%%%%%%SALIDA%%%%%%%%%%%%%%%%%
%maximo0 es el resultado de evaluar x0 en las ecuaciones
%x0 es el vector que contiene las coordenadas de cada variable que hacen el minimo de la funcion


%Introducimos aqui el punto inicial de la busqueda
x0=[-5;0;-1;-1];
maximo0 = newtonvv_ecuaciones(x0);

%Creamos un bucle de iteracion por cada variable que tenga nuestro sistema de ecuaciones
%Si nos dan en el problema el intervalo de busqueda de cada variable, hemos de cambiarlo en cada bucle for
for x=-5:tol:-3
  for y=0:tol:5
    for z=-1:tol:1
      for t=-1:tol:1
        x1=[x;y;z;t];
        maximo1 = newtonvv_ecuaciones(x1);
        if norm(maximo1)>norm(maximo0)
            maximo0=maximo1;
            x0=x1;
        end
      end
    end
  end
end

