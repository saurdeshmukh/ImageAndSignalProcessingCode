function [a]=Find_Suffix(b,c);
m=length(b);
n=length(c);
ind=1;
a='';
for i=m+1:n
    a(ind)=c(i);
    ind=ind+1;
end
