function [d]=Prob_String(r,a)
p=Length_String(r);
x=Unique_String(r,a);
d=x/p;
