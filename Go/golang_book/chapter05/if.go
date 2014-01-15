package main

import "fmt"

func main() {
  for i := 1; i <= 10; i++ {
    if i % 2 == 0 {
      fmt.Println("Even")
    } else {
      fmt.Println("Odd")
    }
  }
}
