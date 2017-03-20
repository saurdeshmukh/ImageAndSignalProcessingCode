clc;
clear all;
close all;
X=imread('circles.png');
subplot(2,2,1)
imshow(X);
title('Original Image');

subplot(2,2,2)
imshow(bwmorph(X,'close'));
title('Closing of Image');
subplot(2,2,3)
imshow(bwmorph(X,'remove'));
title('Boundary Detection');
subplot(2,2,4)
imshow(bwmorph(X,'skel'));
title('Skeletonization of Image');