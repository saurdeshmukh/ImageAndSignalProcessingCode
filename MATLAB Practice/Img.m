clc;
clear all;
close all;
 rgb_img=imread('onion.png');
 I = 0.2989*rgb_img(:,:,1)+0.5870*rgb_img(:,:,2)+0.1140*rgb_img(:,:,3);
%  I=rgb2gray(rgb_img);
subplot(2,2,1)
imshow(rgb_img);
title('Original color image');
subplot(2,2,2)
imshow(I);
title('8-bit gray scale image');
b4bit = uint8(I / 16);

subplot(2,2,3)
imshow(b4bit);
title('4-bit gray scale image');
% [M,N]=size(I);
% i=zeros(M,N);
% for j=1:M
%     for k=1:N
%         if I(j,k)>=128
%             i(j,k)=1;
%         end
%     end
% end
i=gray2bw(I);
subplot(2,2,4)
imshow(i);
title('1-bit binary image');
    