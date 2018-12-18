B = [0,0;2,3;5,0;3,-1;2,-1];
w1 = [0.5, 0.7, 0.8, 1, 0.6];
w2 = [0.5, 2, 0.8, 1, 0.6];
w3 = [0.5, 0.2, 0.8, 1, 0.6];

t=linspace(0,1);

plotrbezier(B,w1,t,1)
pause
plotrbezier(B,w2,t,1)
pause
plotrbezier(B,w3,t,1)
