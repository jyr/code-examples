package main

import "fmt"

func main() {
  x := make([]float64, 5,10)
  slice := []int { 1, 2, 3 }
  fmt.Println(slice[1:], x)
}
