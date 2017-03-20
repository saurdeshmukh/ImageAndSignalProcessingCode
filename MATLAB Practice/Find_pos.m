function [temp,k]=Find_pos(str,sbl,j)
k=0;
i=j;
spp=j+sbl;
C=str(spp);
while (i~=(j+sbl-1))
    if str(i)==C
        k=k+1;
        
        temp(k)=i;
        
    end
    i=i+1;
end
end