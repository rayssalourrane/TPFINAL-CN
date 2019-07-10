function sum = pisum(ignore)
  sum = 0.0;
  for j=1:500
    sum = 0.0;
    for k=1:10000
      sum = sum + 0.1/(k*k);
    endfor
  endfor
endfunction

function s = pisumvec(ignore)
  a = [1:10000]
  for j = 1:500
    s = sum(1./(a.^2));
  endfor
endfunction
