function [d]=power_law(x,r)
[m,n]=size(x);
for i=1:m
    for j=1:n
        t(i,j)=double(x(i,j)).^double(r);
        y(i,j)=0.15*t(i,j);
    end
end
subplot(1,2,1)
imshow(x);
title('Original Image');
subplot(1,2,2)
d=uint8(y);
imshow(d);
title('O/P of Power law Image');

