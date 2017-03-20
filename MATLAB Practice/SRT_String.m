function [C]=SRT_String(r)
p=Length_String(r);
z=1;
s='                                                           ';
for i=1:p
    f=Unique_String(s,r(i));
    if f==0
        s(z)=r(i);
       a(z)=Unique_String(r,s(z));
       z=z+1;
    end
end
y=1;
p=length(a);
for i=1:p
    for j=1:a(i)
        C(y)=s(i);
        y=y+1;
    end
end
    
    
    
    