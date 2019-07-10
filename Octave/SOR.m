function [Iter, x, NormaRel]=SOR(A,b,w,Toler,IterMax)
  n = length(A);
  for i=1:n
    r=1/A(i,i);
    for j=1:n
      if (i~=j), A(i,j) = A(i,j)*r;
    endif
  endfor
  b(i) = b(i)*r; x(i) = b(i);
endfor
Iter = Iter+1;
for i=1:n
  soma=0;
  for j=1:n
    if (i~=j), soma = soma+A(i,j)*x(j);
    endif
  endfor
  v(i)=x(i); x(i)=w*(b(i) - soma) + (1-w)*x(i);
endfor
NormaNum = 0; NormaDen = 0;
for i=1:n
  t=abs(x(i) - v(i))
  if (t>NormaNum), NormaNum = t;
  endif
  if abs(x(i)) > NormaDen, NormaDen=abs(x(i));
  endif
endfor
endfunction

if NormaRel <= Toler
  CondErro = 0;
  else
  CondErro = 1;
endif
