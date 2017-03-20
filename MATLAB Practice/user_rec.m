function[hu]=user_rec(ip,hu,n1,n)

while (ip(1,1)~=1)
      ip=user_sort(ip,n1);
      ip((n1-1),1)=ip((n1-1),1)+ip(n1,1);
      for i=n:-1:1
         if hu(i,2)==ip((n1-1),2)
              hu(i,(n-n1+3))=0;
          else if hu(i,2)==ip(n1,2)
                hu(i,(n-n1+3))=1;
                hu(i,2)=ip((n1-1),2);
              else  hu(i,(n-n1+3))=56;
              end
             
          end
      end
      n1=n1-1;
%       j=j+1;
end
end
