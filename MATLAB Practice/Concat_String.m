function [r]=Concat_String(s1,s2)
p=Length_String(s1);
q=Length_String(s2);
d=p+q;
for i=1:d
    if i<=p
        r(i)=s1(i);
    else
        r(i)=s2(i-p);
    end
end
