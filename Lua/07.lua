local x = os.clock()
local s = 0
function SOR(A, b, w, Toler, IterMax)
  local n = #A
  local x = {0, 0, 0, 0, 0}
  local v = {0, 0, 0, 0, 0}
  for i = 1, n do
    local r = 1/A[i][i]
    for j = 1, n do
      if i~=j then
        A[i][j] = A[i][j]*r
      end
    end
    b[i] = b[i]*r
    x[i] = b[i]
  end
  Iter = 0
  NormaRel = 1000
  while (NormaRel > Toler and Iter < IterMax) do
    Iter = Iter + 1
    for i = 1, n do
      soma = 0
      for j = 1, n do
        if i~=j then
          soma = soma+A[i][j]*x[j]
        end 
      end
      v[i] = x[i]
      x[i] = w*(b[i]-soma)+(1-w)*x[i]
    end
    NormaNum = 0
    NormaDen = 0
    for i = 1, n do
      t = math.abs(x[i]-v[i])
      if t > NormaNum then
        NormaNum = t
      end
      if math.abs(x[i]) > NormaDen then
        NormaDen = math.abs(x[i])
      end
    end
    NormaRel = NormaNum/NormaDen
  end
  if NormaRel <= Toler then
    CondErro = 0
  else
    CondErro = 1
  end
  print("Iter: " .. Iter)
  print(table.concat(x,", "))
  print("NormaRel: " .. NormaRel)
  print("CondErro: " .. CondErro)
end
A = {{4, -2, 1, 3, 0}, {-1, 10, 0, 8, 1}, {-1, 1, 15, 2, 4}, {0, 1, 10, 5, 1}, {2, -3, 1, 2, 20}}
b = {15, 56, 74, 57, 107}
w = 1.6
Toler = 0.00001
IterMax = 500
SOR(A, b, w, Toler, IterMax)
print(string.format("Tempo gasto: %f segundos", os.clock() - x))