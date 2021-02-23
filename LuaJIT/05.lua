local x = os.clock()
local s = 0
local Euler = 0
for n = 1, 10000 do
  Euler = Euler + 1/(n^2)
end
print(string.format("Euler: %f", Euler))
print(string.format("Tempo gasto: %f segundos", os.clock() - x))