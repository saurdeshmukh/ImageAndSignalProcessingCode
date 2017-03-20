function [y]=user_zooming(x)
[m,n]=size(x);
p=1;
q=1;
for i=1:m
    for j=1:n
        y(i,j)=100;
    end
end

for i=(m/4):((3*m)/4)
    for j=(n/4):((3*n)/4)
        y(p,q)=x(i,j);
        p=p+2;
        q=q+2;
        
    end
end
end
% y = padarray(y,[2 2],0,'both');
% for i=1:m
%     for j=1:n
%         if ((mod((i),2)==0)&&(mod((j),2)==0))
%           sum=0;
%         for k=0:2
%             for l=0:2
%               sum=sum+(y(i+k,j+l));
%             end
%         end
%         y(i,j)=sum/9;
%         end
%     end
% end