function [OutImg]=Image_Negation(InImg)
[m,n]=size(InImg);

for i=1:m
    for j=1:n
        OutImg(i,j)=255-InImg(i,j);
    end
end
subplot(1,2,1)
imshow(InImg);
title('Original Image');

subplot(1,2,2)
imshow(OutImg);
title('Negation Image');