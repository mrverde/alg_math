function[A,b]=matrizAB3
A=zeros(41);
b=zeros(41,1);
for j=4:40
   A(j,j)=-(1/4);
   A(j,j-1)=-(1/4);
   A(j,j+1)=-(1/4);
   A(j,j-2)=(1/4);
   A(j,j-3)=-(1/4);

end
A(1,1)=-1;
A(2,2)=0;
A(3,3)=-2;
A(41,41)= 0;
