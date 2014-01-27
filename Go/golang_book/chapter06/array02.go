package main

import "fmt"

func main() {
  // x := [5]float64{ 98, 93, 77, 82, 83 }
  x := [5]float64{ 
    98,
    93,
    77,
    82,
    83,
  }

  var length float64 = float64(len(x))
  var total float64 = 0

  for _, value := range x {
    total += value
  }

  fmt.Println(total / length)

}
