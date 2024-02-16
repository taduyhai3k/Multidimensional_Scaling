function [output k] = Good(Coor,MyData)
[n, ~] = size(MyData);
output = zeros(n);
for i= 1: n
    for j = 1: i
        output(i,j) = sum((Coor(i, :) - Coor(j,:)).*(Coor(i, :) - Coor(j,:)));
        output(j,i) = output(i,j);
    end
end
MyData = MyData.*MyData;
k = sum(sum(abs(MyData - output))) / sum(sum(MyData));
end

