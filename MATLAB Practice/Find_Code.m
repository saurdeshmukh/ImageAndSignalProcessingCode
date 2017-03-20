function [y]=Find_Code(dct,sp)
[m,n]=size(dct);
for i=1:n
    if dct{2,i}==sp
        y=dct{1,i};
    end
end
end