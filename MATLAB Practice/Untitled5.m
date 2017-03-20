function [temp]=Find_pos(str,sbl,j)
k=0;
i=j;
spp=j+sbl;
while (i~=(j+sbl-1))
    if str(spp)==str(i)
        k=k+1;
        
        temp(k)=i;
        
    end
    i=i+1;
end
end