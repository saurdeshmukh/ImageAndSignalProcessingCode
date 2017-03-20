function[out]=user_erosion(x,A)
subplot(1,2,1)
imshow(x);
title('Original Image');
x=im2bw(x);
x = padarray(x,[2 2]);
[m,n]=size(x);

for i=3:m-2
    for j=3:n-2
        for t=-2:2
            for s= -2:2
                D(3+t,3+s)=x(i+t,j+s);
            end
        end
        D;   
       K=A.*D;
        if A==K
            out(i,j)=255;
        else
            out(i,j)=0;
        end
    end
end


    
subplot(1,2,2)
imshow(out);
    title('image after performing Erosion');
end

             
                
        