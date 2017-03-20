function [y]=Flipping(x)
[m,n]=size(x);
for i=1:n
    for j=1:m
        y(i,j)=x(m-j+1,i);
    end
end
