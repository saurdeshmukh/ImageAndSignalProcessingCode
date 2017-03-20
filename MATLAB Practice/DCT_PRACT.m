clc;
clear all;
close all;
im=imread('cameraman.tif');
[m,n]=size(im);
cu(1)=1/sqrt(m);
cv(1)=1/sqrt(n);
for i=2:m
    cu(i)=sqrt(2/m);
end
for j=2:n
    cv(j)=sqrt(2/n);
end
for u=1:m
    for i=1:m
        b(u,i)=cos((2*(i-1)+1)*pi*(u-1)/(2*m))*cu(u);
    end
end
for v=1:n
    for j=1:n
        c(v,j)=cos((2*(j-1)+1)*pi*(v-1)/(2*n))*cv(v);
    end
end
im=double(im);
b1=[];
b1=b'*im*c;
subplot(1,2,1)
imshow(b1);
title('1');

subplot(1,2,2)
imshow(dct2(im));
title('2');