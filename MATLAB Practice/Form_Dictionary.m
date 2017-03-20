function [dct]=Form_Dictionary(r)
p=Length_String(r);
z=1;
s='';
for i=1:p
    f=Unique_String(s,r(i));
    if f==0
        s(z)=r(i);
       a(z)=Unique_String(r,s(z));
       z=z+1;
    end
end
l=length(s);
for i=1:l
    dct{1,i}=i;
    dct{2,i}=s(i);
end
end