local x = os.clock()
local s = 0
function Mzeros(n)
	local mz = {}
	for i = 1, n do
		mz[i] = {}
		for j = 1, n do
      mz[i][j] = 0
		end
	end
	return mz
end

function gaussian (mean, variance)
    return  math.sqrt(-2 * variance * math.log(math.random())) *
            math.cos(2 * math.pi * math.random()) + mean
end

function Mrandon(n)
	math.randomseed(os.time())
	local mr = {}
	for i = 1, n do
		mr[i] = {}
		for j = 1, n do
			mr[i][j] = gaussian(0, 1)
		end
	end
	return mr
end

function vecConcatP(n)
  local aux = {}
  local aux2 = -2
  for i = 1, n*4 do
    if i%2 == 1 then
      aux2 = aux2 + 2
    end
    aux[i] = aux2
  end
  return aux
end

function concatP(a, b, c, d)
	local sizeh = #a
	local sizev = #a+#b+#c+#d
  local vec = vecConcatP(#a)
  local Maux
  local Mc = {}
	for i = 1, sizeh do
    Mc[i] = {}
    for j = 1, sizev do
      if j < #a+1 then
        Maux = a
      elseif j < #a+#b+1 then
        Maux = b
      elseif j < #a+#b+#c+1 then
        Maux = c
      else
        Maux = d
      end
      --print(string.format("Linha %d Coluna %d\n%s", i, j, Maux[i][j-vec[j]]))
      Mc[i][j] = Maux[i][j-vec[j]]
    end
	end
  return Mc
end

function vecConcatQ(n)
  local aux = {}
  local aux2 = -2
  for i = 1, n*2 do
    if i%2 == 1 then
      aux2 = aux2 + 2
    end
    aux[i] = aux2
  end
  return aux
end

function concatQ(a, b, c, d)
	local sizeh = #a+#b
	local sizev = #c+#d
  local vec = vecConcatQ(#a)
  local Maux
  local Mc = {}
	for i = 1, sizeh do
    Mc[i] = {}
    for j = 1, sizev do
      if i < #a+1 and j < #a+1 then
        Maux = a
      elseif i < #a+1 and j > #a then
        Maux = b
      elseif i > #a and j < #a+1 then
        Maux = c
      else
        Maux = d
      end
      local aux = Maux[i-vec[i]][j-vec[j]]
      --print(string.format("Linha %d Coluna %d\n%s", i, j, aux))
      Mc[i][j] = aux
    end
	end
  return Mc
end

function maTrans(M, x)
  local MT = {}
  for i = 1, #M*x do
    MT[i] = {}
    for j = 1, #M do
      MT[i][j] = M[j][i]
      --print(string.format("Linha %d Coluna %d\n%s", i, j, MT[i][j]))
    end
  end
  return MT
end

function matMult(M, MT, x)
  local Mr = {}
  for i = 1, #M do
    Mr[i] = {}
    for k = 1, #M do
      local soma = 0
      for j = 1, #M*x do
        soma = soma + M[i][j] * MT[j][k]
      end
      Mr[i][k] = soma
      --print(string.format("Linha %d Coluna %d\n%s", i, k, soma))
    end
  end
  return Mr
end

function trace(M)
  local sum = 0
  for i = 1, #M do
    sum = sum + M[i][i]
  end
  return sum
end

function mean(M)
  local vec = {}
  for i = 1, #M do
    local soma = 0
    for j = 1, #M do
      soma = soma + M[j][i]
    end
    vec[i] = soma/#M
  end
  return vec
end

function variance(M, m)
  local vec = {}
  for i = 1, #M do
    local soma = 0
    for j = 1, #M do
      soma = soma + math.pow(M[j][i]-m[i], 2)
    end
    vec[i] = soma/(#M-1)
  end
  return vec
end

function std(v)
  local vec = {}
  for i = 1, #v do
    vec[i] = math.sqrt(v[i][1]) 
  end
  return vec
end

function stdmean(x, y)
  local arr = {}
  arr[1] = x[1]/y[1]
  return arr
end

function randmatstat(t)
	local n = 5
	local v = Mzeros(t)
	local w = Mzeros(t)
	for i = 1, t do
		local a = Mrandon(n)
		local b = Mrandon(n)
		local c = Mrandon(n)
		local d = Mrandon(n)
		local P = concatP(a,b,c,d)
		local Q = concatQ(a,b,c,d)
		local PT = maTrans(P, 4)
		local QT = maTrans(Q, 1)
		local PPT = matMult(P, PT, 4)
		local QQT = matMult(Q, QT, 1)
		local PPT4 = matMult(matMult(PPT, PPT, 1), matMult(PPT, PPT, 1), 1)
		local QQT4 = matMult(matMult(QQT, QQT, 1), matMult(QQT, QQT, 1), 1)
		v[i][1] = trace(PPT4)
		w[i][1] = trace(QQT4)
	end
	local smV = stdmean(std(v), mean(v))
	local smW = stdmean(std(w), mean(w))
	print(smV[1])
	print(smW[1])
end

randmatstat(100)
print(string.format("Tempo gasto: %f segundos\n", os.clock() - x))