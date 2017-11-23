function[A,b]=matrizAB
A=zeros(21);
b=zeros(21,1);
for j=2:20
   A(j,j)=-1;
   A(j,j-1)=(3/4);
   A(j,j+1)=(1/4);
   A(1,1)=1;
   A(21,21)=1;
   b(1,1)=1;

end