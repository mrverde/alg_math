function sistem = newtonvv_ecuaciones(F)
%En esta funcion ponemos las ecuaciones del sistema. Hay que tener cuidado al modificar las variables.
x = F(1); y = F(2); w = F(3); z = F(4); 
sistem(1) = 2*x +y +w +z -5;
sistem(2) = x +2*y +w +z -5;
sistem(3) = x +y +2*w +z -5;
sistem(4) = x*y*w*z -1;