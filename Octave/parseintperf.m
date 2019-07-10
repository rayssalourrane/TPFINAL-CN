function n = parseintperf(t)
    for i = 1:t
      n = randi([0,2^32-1],1,'uint32');
      s = dec2hex(n);
      m = hex2dec(s);
      assert(m=n);
    endfor
endfunction
