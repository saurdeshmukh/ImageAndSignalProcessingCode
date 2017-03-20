function[out]=user_dilation(x,A)
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
       sum=0;
        for p=1:5
            for q=1:5
                sum=sum+K(p,q);
            end
        end
        if sum>0
         out(i,j)=1;
        else
            out(i,j)=0;
        end
        
    end
end


    
subplot(1,2,2)
imshow(out);
    title('image after performing Dilation');
end
             
                
        