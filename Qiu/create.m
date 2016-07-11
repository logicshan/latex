function [m,n,T]=create(b)    %b is beta2
format long
T=zeros(11);
for i=1:11
    T(i,i)=2*i-1;
end
for j=2:11
    T(j,j-1)=1;
    T(j-1,j)=1;
end
T(2,3)=b;
T(3,2)=b;   %creating a new matrix T
[m,n]=eig(T);