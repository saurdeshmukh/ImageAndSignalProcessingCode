function [Fml,Fpos]=Find_pos_ml(str,j,sbl)
spp=j+sbl-1;
spp
j
sbl
str
str(spp)
temp=strfind(str(1:sbl-1),str(spp));
k=length(temp);
temp
for i=1:k
    j=1;
    m=1;
    while(j==1)
        x=str(spp:length(str));
        x
        y=str(temp(i):length(str));
        y
        if strncmp(x,y,m)
            m=m+1;
        else
            j=0;
        end
    end
    temp1(i)=m-1;
end
temp1
max=temp1(1);
for i=2:k
    if temp1(i)>max;
        max=temp1(i);
    end
end
Fml=max;
for i=1:k
    if temp1(i)==max
        Fpos=temp(i)+j-1;
    end
end
end