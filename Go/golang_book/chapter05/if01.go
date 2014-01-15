package main

import "fmt"

func main() {
  for i := 1; i <= 10; i++ {
    if i % 2 == 0 {
      fmt.Println("Even")
    } else if i % 3 == 0 {
      fmt.Println("divisible by 3")
    } else if i % 4 == 0 {
      fmt.Println("divisible by 4")
    }
  }
}
