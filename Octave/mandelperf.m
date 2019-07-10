function n = mandel(z)
  n = 0;
  c = z;
  for n=0:79
    if abs(z)>2
      return
    endif
    z = z^2+c;
  endfor
  n = 80;
endfunction

function M = mandelperf(ignore)
  M = zeros(length(-22,0:.1:0.5), length(-1:.1:1));
  count = 1;
  for r = -2:0.1:0.5
    for i = -1:.1:1
      M(count) = mandel(complex(r,i));
      count = count + 1;
     endfor  
  endfor
endfunction
