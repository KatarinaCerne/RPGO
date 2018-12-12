function Bmi = BernstMI1(m,i,uk)
b = zeros(m+1,1);
b(i+1)=1;
Bmi = bezier(b,uk);

end