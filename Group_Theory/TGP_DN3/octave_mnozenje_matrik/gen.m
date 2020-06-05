function A = gen(n,i, j)
  A = eye(n);
  A(i, j) = 1;
end
