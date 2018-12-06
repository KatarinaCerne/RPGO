power2bernstein(1);
power2bernstein([0,1]);
power2bernstein([0,0,1]);
power2bernstein([1,0]);
power2bernstein([0,1,0]);
power2bernstein([0,0,1,0]);
%damo jim matlab-obrnjene polinome, dobimo �love�ko obrnjene polinome
fliplr(bernstein2power(fliplr(power2bernstein([0,0,1,0]))));%to je identiteta

%---------------------------------------------------------------

m=3;
p=[zeros(1,m),1]; %1 v matlab-na�inu, v poten�ni bazi
q=[zeros(1,m-1),1,0]; %x v matlab-na�inu

Bp = zeros(1,m+1);
Bq = zeros(1,m+1);

for i=1:m+1
   Bp(i)=polyval(p,(i-1)/m); %dobili bomo polinom v �love�kem na�inu
   Bq(i)=polyval(q,(i-1)/m); %v bernsteinovi bazi
end

Bp==power2bernstein(p);
Bq==power2bernstein(q);

bernstein2power(fliplr(Bp))==fliplr(p);
bernstein2power(fliplr(Bq))==fliplr(q);

%---------------------------------------------------------------------------

n=5;
%hold on

for i=1:n+1
b1=zeros(1,n+1);
b1(i)=1;
pp=fliplr(bernstein2power(b1));

x1=linspace(0,1,100);
y1=polyval(pp,x1);
plot(x1,y1)
hold on
end

hold off

bb=[1,0,0,0,0,0]; %to je B_5^5 v matlab na�inu
ppp=fliplr(bernstein2power(bb)); %ko ga pretvorimo, dobimo x^5 v matlab na�inu
xx=linspace(0,1,100);
yy=polyval(ppp,xx);
%plot(xx,yy)

%--------------------------------------------------------------
%ra�unanje vrednosti B_3^4(1/2)
nn=4;
ii=3;
tt=1/2;

B34=zeros(1,nn+1);
B34(nn-ii+1)=1; %v matlab zapisu, v bernsteinovi bazi

potB34 = fliplr(bernstein2power(B34)); %v matlab zapisu, v poten�ni bazi
vrednost = polyval(potB34,1/2);

ff = @(t) nchoosek(nn,ii)*t^ii*(1-t)^(nn-ii); %bernsteinov bazni polinom

%------------------------------------------------------------------------
polyval(fliplr(bernstein2power([0,1,0,0])),1/2); %to je vrednost B_2^3(1/2)

