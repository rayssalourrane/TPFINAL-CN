local z = os.clock()
local s = 0
local n = 10
for i = 1, n do 
	local w = math.random(n)
	local x = tostring(w)
	print(string.format("Tipo de x: %s", type(x)))
	local y = tonumber(x)
	print(string.format("Tipo de y: %s", type(y)))
	print(string.format("y + 15: %s", y+15))
	print(type(z) == type(y))
end
print(string.format("Tempo gasto: %f segundos\n", os.clock() - z))