clc;
clear all;
close all;
a=imread('cameraman.tif');
[b c]=size(a);
w1=[1 1 1 ;0 0 0;-1 -1 -1];
w2=[-1 0 1;-1 0 1;-1 0 1];
a=padarray(a,[1 1]);
r=double(a);

for i=2:b
for j=2:c
        t=w1.*(r(i-1:i+1,j-1:j+1));
f1(i,j)=sum(t(:));
end
end
for i=2:b
for j=2:c
        t=w2.*(r(i-1:i+1,j-1:j+1));
f2(i,j)=sum(t(:));
end
end
fx=uint8(f1);
fy=uint8(f2);
subplot(1,3,1);
imshow(fx);
title('Edge Detection in X direction');
subplot(1,3,2);
imshow(fy);
title('Edge Detection in Y direction');
f=fx+fy;
subplot(1,3,3);
imshow(f);
title('Addition of X & Y direction');
