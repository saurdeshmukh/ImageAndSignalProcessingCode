clc;
clear all;
close all;
a=imread('cameraman.tif');
[b c]=size(a);
subplot(2,2,1)
imshow(a);
title('Original Image');
w1=[1 1 1 ;0 0 0;-1 -1 -1];
w2=[-1 0 1;-1 0 1;-1 0 1];
r=padarray(a,[1 1]);
a=double(r);

for i=2:b
for j=2:c
%         t=w1.*(a(i-1:i+1,j-1:j+1));
% f1(i,j)=sum(t(:));
f1(i,j)=a(i-1,j-1)*w1(1,1)+a(i-1,j)*w1(1,2)+a(i-1,j+1)*w1(1,3)+a(i,j-1)*w1(2,1)+a(i,j)*w1(2,2)+a(i,j+1)*w1(2,3)+a(i+1,j-1)*w1(3,1)+a(i+1,j)*w1(3,2)+a(i+1,j+1)*w1(3,3);    
end
end
for i=2:b
for j=2:c
%         t=w2.*(a(i-1:i+1,j-1:j+1));
% f2(i,j)=sum(t(:));
f2(i,j)=a(i-1,j-1)*w2(1,1)+a(i-1,j)*w2(1,2)+a(i-1,j+1)*w2(1,3)+a(i,j-1)*w2(2,1)+a(i,j)*w2(2,2)+a(i,j+1)*w2(2,3)+a(i+1,j-1)*w2(3,1)+a(i+1,j)*w2(3,2)+a(i+1,j+1)*w2(3,3);    
end
end
fx=uint8(f1);
fy=uint8(f2);

subplot(2,2,2)
imshow(fx);
title('Edge Detection in X direction');
subplot(2,2,3);
imshow(fy);
title('Edge Detection in Y direction');
f=fx+fy;
subplot(2,2,4);
imshow(f);
title('Addition of X & Y direction');
