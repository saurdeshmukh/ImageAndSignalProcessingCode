
clc;
clear all;
close all;
im=imread('cameraman.tif');
subplot(2,2,1);
imshow(im);
title('input image');
im=double(im);
[row col]=size(im);
rx=[1 0;0 -1];%robert
ry=[0 1;-1 0];
for i=2:row-1
    for j=2:col-1
        imx(i-1,j-1)=im(i-1,j-1)*rx(1)+im(i-1,j+1)*rx(2)+im(i,j-1)*rx(3)+im(i,j)*rx(4);
        imy(i-1,j-1)=im(i-1,j-1)*ry(2)+im(i-1,j)*ry(1)+im(i,j)*ry(3)+im(i,j-1)*ry(4);
    end
end
subplot(2,2,2);
imshow(uint8(imx));
title('Edge detection in X-direction');
subplot(2,2,3);
imshow(uint8(imy));
title('Edge detection in Y-direction');
[r1 c1]=size(imx);
for i=1:r1
    for j=1:c1
        opp(i,j)=sqrt(imx(i,j)*imx(i,j)+imy(i,j)*imy(i,j));
    end
end       

subplot(2,2,4);
imshow(uint8(opp));
title('Edge Detection in X-Y direction');
