B = [0 0; 2 6; 3 0; 5 4; 7 1; 5 5; 10 6];
B3 = bezierelv(B,3);
t1=linspace(0,1);


B10 = bezierelv(B ,10) ;
B30 = bezierelv(B ,30) ;

plot(B30(:,1),B30(:,2),'-o')
hold on
plot(B(:,1),B(:,2),'-o')
hold on
plotbezier(B,t1);
hold off