function [d]=Concat_Code(b,c)
m=length(b);
n=length(c);
ind=1;
d='';
if m>n
    for i=1:m
      d(ind)=b(i);
      ind=ind+1;
    end
    for i=1:n
       d(ind)=c(i);
      ind=ind+1;
    end
else
    for i=1:n
      d(ind)=c(i);
      ind=ind+1;
    end
    for i=1:m
       d(ind)=b(i);
      ind=ind+1;
    end
end    