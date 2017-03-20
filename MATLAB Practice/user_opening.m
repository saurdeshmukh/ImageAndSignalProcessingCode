function[z]=user_opening(y,A)
subplot(1,2,1)
imshow(y);
title('Original Image');
k=user_erosion(y,A);
z=user_dilation(k,A);

subplot(1,2,2)
imshow(z);
title('Image After performing opening');


end