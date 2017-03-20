clc;
clear all;
close all;
im=imread('pout.tif');
subplot(2,2,1);
imshow(im);
title('Original Image');
s=size(im);
M=s(1);
N=s(2);
ap=[];
aq=[];
ap(1)=sqrt(1/M);
aq(1)=sqrt(1/N);
for p=2:M
    ap(p)=sqrt(2/M);
end
for q=2:N
    aq(q)=sqrt(2/N);
end
b=[];
for p=1:M
    for m=1:M
        b1(p,m)=cos(((2*(m-1)+1)*pi*(p-1))/(2*M))*ap(p);
    end
end
for q=1:N
    for n=1:N
        b2(q,n)=cos(((2*(n-1)+1)*pi*(q-1))/(2*N))*aq(q);
    end
end
im=double(im);
b=b1'*im*b2;
subplot(2,2,2);
imshow(b);
title('Dct Using User Function');
subplot(2,2,3)
imshow(dct2(im));
title('Dct Using In-Build Function');