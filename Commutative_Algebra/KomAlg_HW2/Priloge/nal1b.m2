R = QQ[x,y,z, MonomialOrder => Lex];
I = ideal(x^2 + y^2 - z, x^2 + y + z^2, (-1)*x + y^2 + z^2);

dim I
degree I

g = gb I;
gens g
