function b_k = pointbary(x,y,T)
A = [1,1,1;T(1,1),T(2,1),T(3,1);T(1,2),T(2,2),T(3,2)];

b_k = A\[1;x;y];
% u=b_k(1);
% v=b_k(2);
% w=b_k(3);

end