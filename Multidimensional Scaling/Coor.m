function [output, k] = Coor(MyData)
[n, ~] = size(MyData);
MyData = MyData.*MyData;
H = eye(n) - 1/n*ones;
B = -1/2*H*MyData*H;
[w,v] = eig(B);
k = (v(1,1) + v(2,2))/sum(sum(v));
output = [w(:, 1:2)] * [sqrt(v(1,1)) 0 ; 0 sqrt(v(2,2))];
end

