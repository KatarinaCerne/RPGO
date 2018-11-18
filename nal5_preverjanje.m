B=[0,0;2,3;4,2;5,-1];
t=1/2;
t1=linspace(0,1);

p1=1; %št. subdivizij
BS1=beziersub(B,t,p1);

kr1=BS1{1,1}; %1. poligon
kr2=BS1{1,2}; %2. poligon

plot(B(:,1),B(:,2),'-');
hold on;
scatter(B(:,1),B(:,2),'filled');
hold on
plot(kr1(:,1),kr1(:,2),'-');
hold on
scatter(kr1(:,1),kr1(:,2),'filled');
hold on
plot(kr2(:,1),kr2(:,2),'-');
hold on
scatter(kr2(:,1),kr2(:,2),'filled');
hold on
plotbezier(B,t1,1);
hold off

pause

p2=2;
BS2=beziersub(B,t,p2);

plot(B(:,1),B(:,2),'-');
hold on
scatter(B(:,1),B(:,2),'filled');
hold on
for i=1:2^p2
    kr=BS2{p2,i}; %vzamemo matrike iz zadnje vrstice celice in jih rišemo
    plot(kr(:,1),kr(:,2),'-');
    hold on
    scatter(kr(:,1),kr(:,2),'filled')
    hold on
    plotbezier(B,t1,1);
    hold on
end
hold off

pause

p3=3;
BS3=beziersub(B,t,p3);

plot(B(:,1),B(:,2),'-');
hold on
scatter(B(:,1),B(:,2),'filled');
hold on
for i=1:2^p3
    kr=BS3{p3,i};
    plot(kr(:,1),kr(:,2),'-');
    hold on
    scatter(kr(:,1),kr(:,2),'filled')
    hold on
    plotbezier(B,t1,1);
    hold on
end
hold off

