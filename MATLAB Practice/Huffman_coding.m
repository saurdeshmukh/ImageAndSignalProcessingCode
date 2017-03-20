function [an]=Huffman_coding(a)
l=length(a);
at=sort(a,'descend');
arr=cell(l,l+2);
for i=1:l
arr(i,1)={a(i)};
arr(i,2)={''};
arr(i,3)={at(i)};
an=arr;
end




    