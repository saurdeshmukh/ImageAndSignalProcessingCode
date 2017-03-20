function [d]=Length_String1(r)
a=uint8(r);
d=1;
for i=1:50
if a(d)==0
   break;
else
    d=d+1;
end
end
