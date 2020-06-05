R = QQ[x,y];
I = ideal(x*y^2 + 2*y^2, x^4 - 2*x^2 + 1);
p = x^4 + 1;
q = x^2 - y - 1;

g = gb I;
gens g

p % I

q % I

J = radical I;

p % J

q % J

