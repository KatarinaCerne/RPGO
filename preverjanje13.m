T=[0,0;5,1;3,3];
t1=[0,0];
t2=[1,1];
t3=[4,2];

B = [2,1,-1,0;5,3,-4,NaN;0,0,NaN,NaN;1,NaN,NaN,NaN];
% [u1,u2,u3]=pointbary(t1(1),t1(2),T);

U1 = [pointbary(t1,T)';pointbary(t1,T)';pointbary(t1,T)'];
U2 = [pointbary(t2,T)';pointbary(t2,T)';pointbary(t2,T)'];
U3 = [pointbary(t3,T)';pointbary(t3,T)';pointbary(t3,T)'];

blossom3(B,U1);
blossom3(B,U2);
blossom3(B,U3);
decasteljau3(B,pointbary(t3,T));

smerx = [1,0];
smery = [0,1];

U4 = [vectorbary(smerx,T)';pointbary(t1,T)';pointbary(t1,T)'];
U5 = [vectorbary(smerx,T)';pointbary(t2,T)';pointbary(t2,T)'];
U6 = [vectorbary(smerx,T)';pointbary(t3,T)';pointbary(t3,T)'];

U7 = [vectorbary(smery,T)';pointbary(t1,T)';pointbary(t1,T)'];
U8 = [vectorbary(smery,T)';pointbary(t2,T)';pointbary(t2,T)'];
U9 = [vectorbary(smery,T)';pointbary(t3,T)';pointbary(t3,T)'];

blossom3(B,U4);
blossom3(B,U5);
blossom3(B,U6);

blossom3(B,U7);
blossom3(B,U8);
blossom3(B,U9);

U10 = [vectorbary(smerx,T)';vectorbary(smerx,T)';pointbary(t1,T)'];
U11 = [vectorbary(smerx,T)';vectorbary(smerx,T)';pointbary(t2,T)'];
U12 = [vectorbary(smerx,T)';vectorbary(smerx,T)';pointbary(t3,T)'];

blossom3(B,U10);
blossom3(B,U11);
blossom3(B,U12);

