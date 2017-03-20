function [y]=User_Boundary(x)
z=user_erosion(x);
y=x-z;
subplot(1,2,1)
title('Original Image');
imshow(x);

subplot(1,2,2)
title('Boundary of Image');
imshow(y);
end
