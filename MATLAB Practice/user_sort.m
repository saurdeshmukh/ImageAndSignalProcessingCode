function [ip] = user_sort(ip,n1)
for i=1:n1
    for j=1:n1-1
        if ip(j,1)<ip((j+1),1)
            t=ip(j,1);
            t1=ip(j,2);
            ip(j,1)=ip((j+1),1);
            ip((j+1),1)=t;
            ip(j,2)=ip((j+1),2);
            ip((j+1),2)=t1;
        end
    end
end
        

