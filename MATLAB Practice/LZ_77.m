function [y]=LZ_77(str);
dct=Form_Dictionary(str);
i=1;
sbl=7;
labl=6;
j=1;
while(str(j+sbl))
    sb=str(j:j+sbl-1);
    lab=str(j+sbl:j+sbl+labl-1);
    sp=lab(1);
    t=strfind(sb,sp);
    if (isempty(t))
        y(i,1)=0;
        y(i,2)=0;
        y(i,3)=Find_Code(dct,sp);
       i=i+1;
       j=j+1;
    else
        [Fml,Fpos]=Find_pos_ml(strcat(sb,lab),j,sbl);
        y(i,1)=sbl-Fpos;
        y(i,2)=Fml;
        y(i,3)=Find_Code(dct,lab(Fml+1));
        j=j+Fml+1;
        i=i+1;
    end
    y
end
end

        