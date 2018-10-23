function plotbezier (B , t)
% Opis :
% plotbezier nariše Bezierjevo krivuljo za dane kontrolne
% toèke in seznam parametrov
%
% Definicija :
% plotbezier (B,t)
%
% Vhodni podatki :
% B matrika velikosti n+1 x d, ki predstavlja kontrolne
% toèke Bezierjeve krivulje stopnje n v
% d- dimenzionalnem prostoru ,
% t seznam parametrov dolžine k, pri katerih raèunamo
% vrednost Bezierjeve krivulje

bez_b=bezier(B,t); %v vrstici so koordinate toèke pri parametru t

x=bez_b(:,1);
y=bez_b(:,2);

plot(x,y)

%treba dodati:
%-kako se rišejo toèke (tj poligon)
%-zrcaljenja, rotacije


end