clc;
clear all;
close all;
m=input('value:');
l=input('no of values of runs to be evaluated:');
Q=[];
R=[];
for n=0:(l-1)
    q=floor(n/m);
    r=n-q*m;
    Q=[Q q];
    R=[R r];
end
%disp(Q);
%disp(R);
 
%code for quotient
i=1;
Qc={};
for i=1:l
    q=Q(i);
    qc='';
    for j=1:q
        qc=strcat(qc,'1');
    end
    qc=strcat(qc,'0');
    Qc={Qc{:} qc};
end
%disp(Qc);
 
% code for remainder
 x=ceil(log(m)/log(2));
 y=floor(log(m)/log(2));
 z=(2^x)-m;
 Rc={};
 if x==y
     for i=1:l
         rc='';
         rc=dec2bin(R(i),y);
         Rc={Rc{:} rc};
     end
 else
     for i=1:l
         rc='';
         if R(i)<z
             rc=dec2bin(R(i),y);
             Rc={Rc{:} rc};
         else
             rc=dec2bin((R(i)+z),x);
             Rc={Rc{:} rc};
         end
     end
 end
 %disp(Rc);
 
 code={};
 c='';
 for i=1:l
     c=strcat(Qc{i},Rc{i});
     code={code{:} c};
 end
 %disp(code);   
 
 C={};
 for i=1:l
     C{i,1}=i-1;
     C{i,2}=Q(i);
     C{i,3}=R(i);
     C{i,4}=code{i};
 end
 disp('   runs quotient remainder code');
 disp(C);
