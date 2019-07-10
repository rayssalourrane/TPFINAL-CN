function r = randmatstat(t)
  n = 5;
  v = zeros(t);
  w = zeros(t);
  for i = 1:t
    a = randn(n,n);
    b = randn(n,n);
    c = randn(n,n);
    d = randn(n,n);
    P = [a b c d];
    Q = [a b; c d];
    v(i) = trace((P'*P)^4);
    w(i) = trace((Q'*Q)^4);
  endfor
  std(v)/mean(v),
  std(w)/mean(w),
endfunction
