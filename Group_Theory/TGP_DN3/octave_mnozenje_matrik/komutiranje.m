n = 4;
c = 0;
for i=1:n
  for j=(i+1):n
    for k=1:n
      for l=(k+1):n
        if gen(n, i, j)*gen(n, k, l) == gen(n, k, l)*gen(n, i, j)
          display('+')
        else
          c = c + 1;
          display('========')
          [i, j]
          [k, l]
          gen(n, i, j)
          gen(n, k, l)
          gen(n, i, j)*gen(n, k, l)
          gen(n, k, l)*gen(n, i, j)
         endif
      endfor
    endfor
  endfor
endfor
c
