N = 10;
[P1,P2,P3] = peaks(N);
P = [P1(:) P2(:) P3(:)];
m = 5;
n = 6;
[Bx,By,Bz] = lsqbezier2(m,n,P,(P(:,1)+3)/6,(P(:,2)+3)/6);
