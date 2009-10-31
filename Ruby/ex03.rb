#/usr/bin/env ruby
#
=begin
 Cadenas
 se puede usar "" o '', 
 la `` se usa para para el sistema operativo
=end

puts "Mi cadena con comillas dobles"
puts 'Mi cadena con comillas simples'

#concatenando
puts "Se usa el simbolo de suma " + " para concatenar cadenas"

#escapando caracteres
puts "Estoy escanpando el caracter \'"

#repetir cadenas
puts "Hola" * 4

#definiciondo constantes
puts "constante de pi"
pi = 3.1416
puts pi

#comandos del sistema
puts "Ejecutando un dir o ls"
puts `ls`

#diferencia de comillas
puts "commillas dobles reemplazan un valor en caso de existir"
puts "Total de 2 + 2 = #{2+2}"
puts 'Total de 2 + 2 = #{2+2}'