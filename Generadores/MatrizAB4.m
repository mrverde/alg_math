function[A,b]=matrizAB4
A=zeros(50);
b=zeros(50,1);
for j=4:49
   A(j,j)=-1;
   A(j,j-1)=(1/5);
   A(j,j+1)=(1/5);
   A(j,j-3)=(1/5);
   A(j,j-2)=(1/5);
end
 A(1,1)=1;
 A(2,2)=1;
 A(3,3)=1;
 A(50,50)=1;
 
 for j=4:49
   b(j,1)=-2;
end

 b(1,1)=1;
 b(2,1)=2;
 b(3,1)=3;
 b(50,1)=1