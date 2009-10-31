#/usr/bin/env ruby
#
=begin
  Declaracion de:
  constante, variables, cadenas
=end

PI = 3.1416
puts PI

#declarando una cadena
cadena = "esto es una cadena"
puts cadena

#conversiondes de datos
# .to_f, .to_i, .to_s
dato1 = 10
dato2 = '33'
puts dato1 + dato2.to_i

# << agregar
a = 'Hola '
a << 'mundo.
Saludando al mundo'
puts a

=begin
  << inicio de una cadena seguido por 
  delimitador, cadena, delimitador
=end

a = <<LIMITE
Esto es una cadena
que pretende ser 
muy, pero muy larga
LIMITE
puts a