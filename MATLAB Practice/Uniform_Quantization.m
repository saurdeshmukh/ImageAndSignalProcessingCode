function [out]=Uniform_Quantization(inp)
 Xml=10;
M=8;
s=(2*Xml)/M;
intervals=-10:s:10;
for i=1:l
    x=inp(i);
    for j=1:length(intervals)-2
        if ((x>=intervals(j))&&(x<intervals(j+1)))
            out(i)=(intervals(j)+intervals(j+1))/2;
        end
    end
end