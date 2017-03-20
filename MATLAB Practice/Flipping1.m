clc;
close all;
clear all;
x=imread('cameraman.tif');
[m,n]=size(x);
for i=1:m
    for j=1:n
        y(i,j)=x(i,n+1-j);
    end
end
imshow(y);
