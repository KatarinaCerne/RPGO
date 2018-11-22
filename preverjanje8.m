D=[-5,0;-4,1;-2,-1;0,3;3,0;5,2;7,-1];
m=length(D)-3; %iz koliko delov je krivulja

P=[-4,1;-2,-1;0,3;3,0;5,2]; %za raèunanje parametra odrežemo 1. in zadnjo toèko
ue=alphaparam(P,0);
ut=alphaparam(P,1);
uc=alphaparam(P,1/2);

BCSe=beziercubspline(ue,D);
BCSt=beziercubspline(ut,D);
BCSc=beziercubspline(uc,D);
t=linspace(0,1);

plot(D(:,1),D(:,2),'k')
hold on
scatter(D(:,1),D(:,2),'filled','k')
hold on
for i=1:m
    plotbezier(BCSe{i},t,0);
    hold on
    plot(BCSe{i}(:,1),BCSe{i}(:,2),'r')
    hold on
    scatter(BCSe{i}(:,1),BCSe{i}(:,2),'filled','r')
    hold on
end

for i=1:m
    plotbezier(BCSt{i},t,0);
    hold on
    plot(BCSt{i}(:,1),BCSt{i}(:,2),'g')
    hold on
    scatter(BCSt{i}(:,1),BCSt{i}(:,2),'filled','g')
    hold on
end

for i=1:m
    plotbezier(BCSc{i},t,0);
    hold on
    plot(BCSc{i}(:,1),BCSc{i}(:,2),'b')
    hold on
    scatter(BCSc{i}(:,1),BCSc{i}(:,2),'filled','b')
    hold on
end

hold off


% u1=zeros(1,m+1);
% u2=zeros(1,m+1);
% u3=zeros(1,m+1);
% 
% for i=1:m+1
%    u1(i)=i-1;
% end
% 
% u2(1)=0;
% for i=2:m+1
%     u2(i)=u2(i-1)+norm(D(i+1,:)-D(i,:));
% end
% 
% u3(1)=0;
% for i=2:m+1
%     u3(i)=u3(i-1)+(norm(D(i+1,:)-D(i,:)))^(1/2);
% end
% 
% beziercubspline(u3,D)



