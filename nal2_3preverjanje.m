B=[0,0;1,2;3,3;4,-1;0,2];
t=linspace(0,1);
plotbezier(B,t);

Rot_60=[cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)];
Ref_y=[-1,0;0,1];

B_rot=(Rot_60*B')';
plotbezier(B_rot,t);

B_ref=(Ref_y*B')';
plotbezier(B_ref,t);

trans_v=[1,2];
B_trans = B+repmat(trans_v,5,1);
plotbezier(B_trans,t)
% hold on
% plotbezier(B,t)