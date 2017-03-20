function []=Unique_Decodable_Method2(code)
n=length(code);
NUD=0;
temp='';
for i=1:n
    for j=1:n
        if (length(code{i})<length(code{j}))
            temp=Concat_Code(code{i},code{j});
        end
        for k=1:n
            if (strcmp(code{k},temp))
                NUD=NUD+1;
            end
        end
    end
end
if (NUD==0)
    display('THE CODE IS UNIQUELY DECODABLE');
else
    display('THE CODE IS NOT UNIQUELY DECODABLE');
end

