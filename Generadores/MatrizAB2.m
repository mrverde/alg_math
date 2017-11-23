function[A,b]=matrizAB2
A=zeros(30);
b=zeros(30,1);
for j=3:29
    A(j,j)=-1;
    A(j,j-2)=0.2;
    A(j,j+1)=0.7;
A(1,1)=1;
A(2,2)=0.5;
A(29,29)=0,5;
A(30,30)=10
b=zeros(30,1);

end

end
