clc;
close all;
clear all;
a=imread('peppers.png');
subplot(2,2,1)
imshow(a);
title('original image');
b=rgb2gray(a);
subplot(2,2,2)
imshow(b);
title('8-bit gray-scale image');
[r c]=size(b);
for i=1:r
for j=1:c
if b(i,j)<=100
d(i,j)=0;
else
d(i,j)=255;
end
end
end
subplot(2,2,3)
imshow(d),
title('1-bit gray-scale image');
%     b4bit = uint8((b / 16)*16); 
b4bit = uint8(b / 16);
subplot(2,2,4)
imshow(b4bit),
title('4-bit gray-scale image');
