clc
close all
clear all
pr=[0.2 0.4 0.2 0.1 0.1];
for i=1:length(pr)
    ip(i,1)=pr(i);
    ip(i,2)=i;
end
ip
n=length(pr);
n1=n;

ip=user_sort(ip,n1);
ip;
hu=ip;
hu=user_rec(ip,hu,n1,n);
hu      
[r c]=size(hu);
      for i=1:r
          str='';
          for j=c:-1:3
              if hu(i,j)~=56
             str=strcat(str,num2str(hu(i,j)));
              
              end
          end
          huffcode{i}=str;
      end
      huffcode
                  
              
      