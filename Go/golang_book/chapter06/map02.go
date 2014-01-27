package main

import "fmt"

func main() {
  elements := map[string]string{
    "H": "Hydrogen",
    "He": "Helium",
    "Li": "Lithium",
    "Be": "Beryllium",
    "B": "Boron",
    "C": "Carbon",
    "N": "Nitrogen",
    "O": "Oxygen",
    "F": "Fluorine",
    "Ne": "Neon",
  }

  fmt.Println(elements)
  fmt.Println(elements["Li"])
  if name, ok := elements["Un"]; ok {
    fmt.Println(name, ok)
  }
}
