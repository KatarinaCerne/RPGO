function plotbezier (B , t)
% Opis :
% plotbezier nari�e Bezierjevo krivuljo za dane kontrolne
% to�ke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% to�ke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dol�ine k, pri katerih ra�unamo
% vrednost Bezierjeve krivulje

bez_b=bezier(B,t); %v vrstici so koordinate to�ke pri parametru t

x=bez_b(:,1);
y=bez_b(:,2);

plot(x,y)

%treba dodati:
%-kako se ri�ejo to�ke (tj poligon)
%-zrcaljenja, rotacije


end