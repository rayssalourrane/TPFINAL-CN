function [Raiz, Iter, CondErro] = Newton(x0, Toler, IterMax)
  Fx=f(x0); DFx=df(x0); x = x0; Iter = 0;
  DeltaX = 1000;
  DF=1;
  while DeltaX = -Fx/DFx, x=x+DeltaX; Fx=f(x); DFx=df(x); Iter=Iter + 1;
  end
  Raiz=x;
  if abs(DeltaX) <= Toler && abs(Fx) <= Toler
    CondErro =0;
  else
    CondErro = 1;
    
  endif
endfunction
