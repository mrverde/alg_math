function y=finterpolacion(t)
%En este archivo tiene que estar la funcion del problema
%y=100./(2+999*exp(-2.1*t))
%y=(100./t.^2).*sin(10./t)
%y=-(1000.*cos(10./t))/t.^4 - (200.*sin(10./t))./t.^3
y=exp(-t.^2)