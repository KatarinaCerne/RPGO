format long
kot=pi/6;
t=linspace(0,1,1000);

%1.
B1=[cos(kot),-sin(kot); 1/cos(kot),0; cos(kot),sin(kot)];

% plotbezier(B1,t,0)
% hold on
% for i=1:11
%     Rot=[cos(i*kot),-sin(i*kot);sin(i*kot),cos(i*kot)];
%     B_rot=(Rot*B1')';
%     plotbezier(B_rot,t,0);
%     hold on
% end

bez_b1=bezier(B1,t); %v vrstici so koordinate toèke pri parametru t

max1=0;
for i=1:size(bez_b1,1)
   if abs(1-norm(bez_b1(i,:)))>max1
      max1= abs(1-norm(bez_b1(i,:)));
   end
end

%2.
B2=[cos(kot),-sin(kot);cos(kot)+1/3*sin(kot),-sin(kot)+1/3*cos(kot);
    cos(kot)+1/3*sin(kot),sin(kot)-1/3*cos(kot);cos(kot),sin(kot)];

% plotbezier(B2,t,0)
% hold on
% for i=1:11
%     Rot=[cos(i*kot),-sin(i*kot);sin(i*kot),cos(i*kot)];
%     B_rot=(Rot*B2')';
%     plotbezier(B_rot,t,0);
%     hold on
% end

bez_b2=bezier(B2,t); %v vrstici so koordinate toèke pri parametru t

max2=0;
for i=1:size(bez_b2,1)
   if abs(1-norm(bez_b2(i,:)))>max2
      max2= abs(1-norm(bez_b2(i,:)));
   end
end

%3.
B3=[cos(kot),-sin(kot); 4/3-1/3*cos(kot),4/3*cot(kot)-4/3*1/sin(kot)+1/3*sin(kot);
    4/3-1/3*cos(kot),-1/3*sin(kot)-4/3*cot(kot)+4/3*1/sin(kot); cos(kot),sin(kot)];

% plotbezier(B3,t,0)
% hold on
% for i=1:11
%     Rot=[cos(i*kot),-sin(i*kot);sin(i*kot),cos(i*kot)];
%     B_rot=(Rot*B3')';
%     plotbezier(B_rot,t,0);
%     hold on
% end

bez_b3=bezier(B3,t); %v vrstici so koordinate toèke pri parametru t

max3=0;
for i=1:size(bez_b3,1)
   if abs(1-norm(bez_b3(i,:)))>max3
      max3= abs(1-norm(bez_b3(i,:)));
   end
end
