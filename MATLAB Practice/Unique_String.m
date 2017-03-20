function [d]=Unique_String(s,a)
p=Length_String(s);
d=0;
for i=1:p
    if s(i)==a
        d=d+1;
    end
end

% if d==0
%    fprintf('NO SUCH ELEMENT');
% else
%     fprintf('PRESENT %d TIMES',d);
% end

