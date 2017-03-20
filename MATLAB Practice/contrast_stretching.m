function [y]=contrast_stretching(x)
mn=min(min(x));
mx=max(max(x));
[m,n]=size(x);
for i=1:m
    for j=1:n
        y(i,j)=(255/(mx-mn))*(x(i,j)-mn);
    end
end
y=uint8(y);
subplot(2,2,1)
imshow(x);
title('ORIGINAL IMAGE');
subplot(2,2,2)
imshow(y);
title('CONTRAST STRETCHED IMAGE');
subplot(2,2,3)
plot(imhist(x));
title('HISTOGRAM OF ORIGINAL IMAGE');
subplot(2,2,4)
plot(imhist(y));
title('HISTOGRAM OF STRETCHED IMAGE');