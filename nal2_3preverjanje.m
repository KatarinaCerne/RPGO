B=[0,0;1,2;3,3;4,-1;0,2];
t=linspace(0,1);
plotbezier(B,t,1); %obièajna krivulja

pause

Rot_60=[cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)]; %rotacijska matrika, rotacija za pi/3=60°
Ref_y=[-1,0;0,1]; %matrika zrcaljenja (reflection) èez y-os

%splošno: [cos(2*fi), sin(2*fi); sin(2*fi), cos(2*fi)], fi je kot med osjo
%zrcaljenja in x-osjo

B_rot=(Rot_60*B')'; %rotacijsko matriko uporabimo na kontrolnih toèkah
plotbezier(B_rot,t,1);

pause

B_ref=(Ref_y*B')';
plotbezier(B_ref,t,1);

pause

trans_v=[1,2]; %translacija za ta vektor 
B_trans = B+repmat(trans_v,5,1); %vsaki vrstici moramo prišteti ta vektor, zato repmat
%ker je n+1=5, ga ponovimo 5-krat
plotbezier(B_trans,t,1)
hold on
plotbezier(B,t,1)


%----------------------------------------
B1=[0,0;0,2;8,2;4,0];
A1=decasteljau(B1(:,1),1/4);
A2=decasteljau(B1(:,2),1/4);

