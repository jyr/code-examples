package main

import "fmt"

func main() {
  slice1 := []int {1,2,3}
  slice2 := make([]int, 2)
  slice3 := []int {1,2,3}
  slice4 := make([]int, 2)
  copy(slice2, slice1)
  copy(slice3, slice4)
  fmt.Println(slice1, slice2, slice3, slice4)
}
