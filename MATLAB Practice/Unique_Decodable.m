function []=Unique_Decodable(code)
count=0;
ds={};
NUD=0;
temp='';
n=length(code);
for i=1:n
    for j=1:n
        if (length(code{i})<length(code{j}))
            if (strncmp(code{i},code{j},length(code{i})))
                temp=Find_Suffix(code{i},code{j});
                if (count==0)
                    count=count+1;
                    ds{count}=temp;
                else
                    for k=1:count
                       if strcmp(ds{k},temp)
                           break;
                       else
                           count=count+1;
                           ds{count}=temp;
                       end
                    end
                end
            end
        end
    end
end
for i=1:count
    for j=1:count
        if (length(ds{i})<length(ds{j}))
            if (strncmp(ds{i},ds{j},length(ds{i})))
                temp=Find_Suffix(ds{i},ds{j});
                    for k=1:count
                       if strcmp(ds{k},temp)
                           break;
                       else
                           count=count+1;
                           ds{count}=temp;
                           break;
                       end
                    end
            end
        end
    end
end
for i=1:n
    for j=1:count
        if (strcmp(code{i},ds{j}))
            NUD=NUD+1;
        end
    end
end
if (NUD==0)
    display('CODE IS UNIQUELY DECODABLE');
else
    display('CODE IS NOT UNIQUELY DECODABLE');
end