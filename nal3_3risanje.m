B1=[-2/3,-4/5;1/3,1/5;0,0;-1/3,1/5;2/3,-4/5];
t1=linspace(0,1);


%plotbezier(B1,t1);

odv_b1=bezierder(B1,1,t1); 
x1=odv_b1(:,1);
y1=odv_b1(:,2);
%plot(x1,y1);

odv_b2=bezierder(B1,2,t1);
x2=odv_b2(:,1);
y2=odv_b2(:,2);
%plot(x2,y2)


figure
subplot(2,3,1)       % 1. graf v polju z 2 vrsticama in 3 stolpci
plotbezier(B1,t1)
title('krivulja')

subplot(2,3,2)       
plot(x1,y1)
title('prvi odvod krivulje')

subplot(2,3,3)       
plot(x2,y2)
title('drugi odvod krivulje')
