function [Temp]=Image_Smoothning(InImg)
[m,n]=size(InImg);
Temp=zeros(m+2,n+2);
subplot(1,2,1)
imshow(InImg);
title('Original Image');
for i=2:m+1
    for j=2:n+1
        Temp(i,j)=InImg(i-1,j-1);
    end
end
Filter=[1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];

for i=1:m
    for j=1:n
        sum=0;
        for k=0:2
            for l=0:2
              sum=sum+(Temp(i+k,j+l)*Filter(k+1,l+1));
            end
        end
        Temp(i+1,j+1)=sum;
    end
end
Temp=uint8(Temp);
subplot(1,2,2)
imshow(Temp);
title('Smoothen Image');