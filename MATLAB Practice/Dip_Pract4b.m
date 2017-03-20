clc;
clear all;
close all;
X=imread('circles.png');
subplot(2,2,1)
imshow(X);
title('Original Image');

subplot(2,2,2)
imshow(bwmorph(X,'erode'));
title('Erosion of Image');
subplot(2,2,3)
imshow(bwmorph(X,'dilate'));
title('Dilation of Image');
subplot(2,2,4)
imshow(bwmorph(X,'Open'));
title('Opening of Image');
