clc;
close all;
clear all;
a=imread('cameraman.tif');
subplot(2,2,1);
imshow(a);
title('original image');

b=dct2(a);
subplot(2,2,2);
imshow(b)
title('dct of image');

level=graythresh(b);
[row col]=size(b);
for i=1:row
    for j=1:col
        if b(i,j)<level
            b(i,j)=0;
        end
    end
end
 
subplot(2,2,3);
imshow(log(abs(b)),[3 7]);
title('filtering of high freq');

k=idct2(b);
subplot(2,2,4);
imshow(k,[0 255])
title('idct of image');
