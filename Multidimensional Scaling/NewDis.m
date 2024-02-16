function [output] = NewDis(Data,c)
[n, ~] = size(Data);
output = Data + ones(n) * c - eye(n) * c;
end

