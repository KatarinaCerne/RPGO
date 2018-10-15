function b = power2bernstein(p)
% Opis: 
% power2bernstein pretvori polinom, predstavljen s 
% koeficienti v potenèni bazi, v polinom, predstavljen 
% v Bernsteinovi bazi 
% 
% Definicija: 
% b = power2bernstein(p) 
% 
% Vhodni podatek: 
% p seznam koeficientov dolžine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v potenèni 
% bazi od x^n do 1 
% 
% Izhodni podatek: 
% b seznam koeficientov dolžine n+1, ki po vrsti 
% pripadajo razvoju polinoma stopnje n v Bernsteinovi 
% bazi od 0-tega do n-tega Bernsteinovega baznega 
% polinoma

n = length(p)-1;
b=zeros(1,n+1);
for i=1:n+1
    for j=i:n+1
        b(j)=b(j)+p(i)*(-1)^(i+j-2)*nchoosek(n,j-1)*nchoosek(j-1,i-1);
        
    end
    
end
b=fliplr(b);
end