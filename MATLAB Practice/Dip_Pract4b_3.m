clc;
clear all;
close all;
X=imread('circles.png');
subplot(2,2,1)
imshow(X);
title('Original Image');

subplot(2,2,2)
imshow(bwmorph(X,'thin'));
title('Thining of Image');
subplot(2,2,3)
imshow(bwmorph(X,'thicken'));
title('Thickening of Image');
