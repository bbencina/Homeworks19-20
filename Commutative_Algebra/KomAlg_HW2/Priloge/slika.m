x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X,Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;
surf(X,Y,Z);
hold on
surf(X,-Z, Y);
surf(Z,X, Y);