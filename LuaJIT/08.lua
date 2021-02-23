local z = os.clock()
local s = 0
function Newton(x0, Toler, IterMax)
  function f(x)
    local x = (x^4)+(2*x^3)-(13*x^2)-(14*x)+24
    return x 
  end
  function df(x)
    local x = (4*x^3)+(6*x^2)-(26*x)-14
    return x
  end
  Fx = f(x0)
  DFx = df(x0)
  x = x0
  Iter = 0
  DeltaX = 1000
  DF = 1
  while ((math.abs(DeltaX) > Toler or math.abs(Fx) > Toler) and (DF ~= 0) and (Iter < IterMax)) do
    DeltaX = -Fx/DFx
    x = x + DeltaX
    Fx = f(x)
    DFx = df(x)
    Iter = Iter + 1
  end
  Raiz = x
  if math.abs(DeltaX) <= Toler and math.abs(Fx) <= Toler then
    CondErro = 0
  else
    CondErro = 1
  end
  print("Raiz: " .. Raiz)
  print("Iter: " .. Iter)
  print("CondErro: " .. CondErro)
end
x0 = 4
Toler = 0.000010000
IterMax = 100
Newton(x0, Toler, IterMax)
print(string.format("Tempo gasto: %f segundos", os.clock() - z))