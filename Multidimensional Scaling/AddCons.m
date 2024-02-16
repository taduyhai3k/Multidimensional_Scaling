function [eigvalue] = AddCons(input1)
input2 = input1;
[n, ~] = size(input1);
input1 = input1.*input1;
H = eye(n) - 1/n*ones;
B = -1/2*H*input1*H;
B1 = -1/2*H*input2*H;
[~, v1] = eig([zeros(n) 2*B; -eye(n) -4*B1]);
v1(imag(v1)~=0) = 0;
v1 = sum(v1);
v1 = sort(v1);
eigvalue = v1(end);
end

