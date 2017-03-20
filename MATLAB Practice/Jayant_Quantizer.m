function [out]=Jayant_Quantizer(inp,M,del_0)
del=del_0;
l=length(inp);
for i=1:l
    x=inp(i);
intervals=(-4*del):del:(4*del);
    for j=1:length(intervals)-1
        
        if ((x>=intervals(j))&&(x<intervals(j+1)))
            out(i)=(intervals(j)+intervals(j+1))/2;
            break;
        end
    end
    if x>0
        j=j-4;
   del=M(j)*del;
    else
        j=9-j;
        del=M(j)*del;
    end
end