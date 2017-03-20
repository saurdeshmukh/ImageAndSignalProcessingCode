clc;
clear all;
close all;
q=imread('moon.tif');
subplot(1,2,1);
imshow(q);
title('original');
im=double(q);
% im=q;
[m n]=size(im);
for i=2:m-1
    for j=2:n-1
     imr(i,j)=0*im(i-1,j-1)-0*im(i-1,j)-0*im(i,j-1)-im(i,j)+im(i+1,j+1)+0*im(i+1,j)-0*im(i,j+1)+0*im(i-1,j+1)-0*im(i+1,j-1); 
 %                  -1,-1         -1,0       0,-1       0,0     1,1           1,0         0,1          -1,1         1,-1 
    end
end
subplot(1,2,2);
imshow(uint8(imr));
title('image after robert mask');
