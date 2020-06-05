format long
% definicijski polinomi alg. mn.
f1 = @(x, y, z) x.^2 + y.^2 - z;
f2 = @(x, y, z) x.^2 + y + z.^2;
f3 = @(x, y, z) -x + y.^2 + z.^2;

% kompleksne resitve grobnerjevega generatorja za z
% !!! ce zamenjamo vrstni red spremenljivk dobimo isto polinom za x
t1 = -0.25*j*(sqrt(7) - 3*j);
t2 = -0.25*j*(sqrt(7) - j);
t3 = 0.25*j*(sqrt(7) + 3*j);
t4 = 0.25*j*(sqrt(7) + j);

% toleranca pri iskanju nicel (lahko tudi manj kot je nastavljena trenutno)
eps = 10^(-6);

vals = [t1, t2, t3, t4];

for z = vals
  for x = vals
    y = -x^2 - z^2;
    if abs(f1(x, y, z)) < eps && abs(f2(x, y, z)) < eps && abs(f3(x, y, z)) < eps
      disp(x);
      disp(y);
      disp(z);
      disp("====================");
      %[f1(x, y, z), f2(x, y, z), f3(x, y, z)]
    end
  end
end

disp("sqrt(7)/4 = ");
disp(sqrt(7)/4);