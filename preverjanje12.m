N = 10;
[P1,P2,P3] = peaks(N);
P = [P1(:) P2(:) P3(:)];
m = 5;
n = 6;
[Bx,By,Bz] = lsqbezier2(m,n,P,(P(:,1)+3)/6,(P(:,2)+3)/6);


% u=linspace(0,1,50);
% v=linspace(0,1,50);
% 
% [bx,by,bz]=bezier2(Bx,By,Bz,u,v);
% hold on
% surf(bx,by,bz)
% mesh(Bx,By,Bz,'Facecolor','none')
% hold off
