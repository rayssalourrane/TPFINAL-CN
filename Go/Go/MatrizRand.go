﻿package main

import(
    "fmt"
    "math/rand"
    "time"
)

func init()
{
    rand.Seed(time.Now().UnixNano())
//we are seeding the rand variable with present time 
//so that we would get different output each time
}

func main()
{
randMatrix:= make([][]int, 3) 
// we have created a slice with length 3 
//which can hold type []int, these can be of different length
    for i := 0; i < 3; i++ {
        randMatrix[i] = make([]int, 3) 
// we are creating a slice which can hold type int
    }
    generate(randMatrix)
    fmt.Println(randMatrix)
}

func generate(randMatrix[][]int)
{
    for i, innerArray := range randMatrix {
        for j := range innerArray {
            randMatrix[i][j] = rand.Intn(100)
//looping over each element of array and assigning it a random variable
        }
    }
}