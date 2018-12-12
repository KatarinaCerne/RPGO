T=[0,0;5,1;3,3];
t1=[0,0];
t2=[1,1];
t3=[4,2];

B = [2,1,-1,0;5,3,-4,NaN;0,0,NaN,NaN;1,NaN,NaN,NaN];
% [u1,u2,u3]=pointbary(t1(1),t1(2),T);

U = [pointbary(t2(1),t2(2),T)';pointbary(t2(1),t2(2),T)';pointbary(t2(1),t2(2),T)'];


blossom3(B,U)

