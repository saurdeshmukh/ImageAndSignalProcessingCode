clc;
clear all;
close all;
a=[0 0];
m1=transpose(a);
b=[3 3];
m2=transpose(b);
s=[1.1 0.3;0.3 0.9];
x=[1 2.2];
xt=transpose(x);
de1=sqrt((xt(1)-m1(1))^2 + ((xt(2)-m1(2))^2));
de2=sqrt((xt(1)-m2(1))^2 + ((xt(2)-m2(2))^2));
display('According to Euclidean distance ');
if de1<de2
    display('x is classified as object of class 1');
else
    display('x is classified as object of class 2');
end
z=[(x(1)-a(1)) (x(2)-a(2))];
dm1=sqrt(z*inv(s)*transpose(z));
z2=[(x(1)-b(1)) (x(2)-b(2))];
dm2=sqrt(z2*inv(s)*transpose(z2));
if dm1<dm2
    display('x is classified as object of class 1');
else
    display('x is classified as object of class 2');
end