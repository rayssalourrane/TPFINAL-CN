local x = os.clock()
local s = 0
function randarr(z)
  local arr = {}
  for i = 1, z do
    arr[i] = math.random(1, z)
  end
  return arr
end
function partition(arr, low, high)
  local i = (low-1)
  local pivot = arr[high+1]
  for j = low, high do
    if arr[j] <= pivot then
      i = i+1
      local aux = arr[i]
      arr[i] = arr[j]
      arr[j] = aux
    end
  end
  local aux = arr[i+1]
  arr[i+1] = arr[high+1]
  arr[high+1] = aux
  return i
end
function quickSort(arr, low, high)
  if low < high then
    local pi = partition(arr, low, high)
    quickSort(arr, low, pi-1)
    quickSort(arr, pi+1, high)
  end
end
arr = {10, 7, 8, 9, 1, 5}
print(table.concat(arr,", "))
local n = #arr
quickSort(arr, 1, n-1)
print(table.concat(arr,", "))
print(string.format("Tempo gasto: %f segundos\n", os.clock() - x))