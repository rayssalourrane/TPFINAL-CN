package main

import(
    "fmt"
    "math"
)

func NewtonRaphson(x float64, comienzo int, margen float64) float64 {
  var resp float64 = 0
  var z    float64
  var dif float64
  
  if comienzo == 1 { z = 1   }
  
  if comienzo == 0 { z = x }
  
     
  z = (z + 2 / z) / 2
  dif = x - z
  
  
  if dif > margen {
    resp = NewtonRaphson(z , 0, margen)
  } else {
    resp = z
  }
  return resp
}

func main()
{
    fmt.Println(NewtonRaphson(2, 1, 0.0000001))
    fmt.Println(math.Sqrt(2))
}