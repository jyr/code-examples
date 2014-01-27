package main

import "fmt"

func main() {
  elements := map[string]map[string]int{
    "H": map[string]int{
      "name": 1,
    },
  }
  fmt.Println(elements)
  if el, ok := elements["H"]; ok {
    fmt.Println(el["name"], el["state"])
  }
}
