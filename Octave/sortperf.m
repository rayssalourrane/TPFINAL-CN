function b = sort(a)
  b = qsort_kernel(a, 1, length(a));
endfunction

function a = qsort_kernel(a, lo, hi)
  i = lo;
  j = hi;
  while i < hi
    pivot = a(floor((lo+hi)/2));
    while i <= j
      while a(i) < pivot, i = i + 1; endwhile
      while a(j) > pivot, j = j - 1; endwhile
      if i <= j
        t = a(i);
        a(i) = a(j);
        a(j) = t;
        i  =  i  +  1 ;
        j  =  j-1 ;
       endif
     endwhile
     if lo < j; 
       a = qsortkernel(a, lo, j) ; 
     endif
    lo = i;
    j = hi;
   endwhile
endfunction

function v = sortperf(n)
  v = rand(n,1);
  v = qsort(v);
endfunction

