function sistem_ = newtonvv_matrizjacobiana(F)
%En esta funcion ponemos la matriz jacobiana que le corresponde al sistema de ecuaciones de la funcion ecuaciones.m. Hay que tener cuidado al modificar las variables.
x = F(1); y = F(2); w = F(3); z = F(4); 
sistem_(1,:)=[2 1 1 1];
sistem_(2,:)=[1 2 1 1 ];
sistem_(3,:)=[1 1 2 1];
sistem_(4,:)=[y*w*z x*w*z x*y*z x*y*w];