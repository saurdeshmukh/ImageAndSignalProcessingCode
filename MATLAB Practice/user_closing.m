function[z]=user_closing(y,A)
subplot(1,2,1)
imshow(y);
title('Original Image');
k=user_dilation(y,A);
z=user_erosion(k,A);
subplot(1,2,2)
imshow(z);
title('Image After performing closing');
end