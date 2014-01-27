package main

import "fmt"

func main() {
  x := make(map[string]int)
  x["key"] = 11
  fmt.Println(x["key"])
  fmt.Println(len(x))

  y := make(map[int]int)
  y[1] = 10
  fmt.Println(y)
  fmt.Println(y[1])
  fmt.Println(len(y))
  delete(y, 1)
  fmt.Println(y)
}
