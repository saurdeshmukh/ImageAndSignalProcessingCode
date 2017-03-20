function [y]=hist_equalization(x)
subplot(2,2,1)
imshow(x);
title('ORIGINAL IMAGE');
subplot(2,2,2)
y=histeq(x);
imshow(y);
title('CONTRAST STRETCHED IMAGE');
subplot(2,2,3)
plot(imhist(x));
title('HISTOGRAM OF ORIGINAL IMAGE');
subplot(2,2,4)
plot(imhist(y));
title('HISTOGRAM OF STRETCHED IMAGE');