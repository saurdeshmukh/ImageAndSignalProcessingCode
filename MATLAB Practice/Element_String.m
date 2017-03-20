function [d]=Element_String(s,a)
p=Length_String(s);
for i=1:p
    if s(i)==a
        d=i;
        break;
    else
        d=0;
    end
end

