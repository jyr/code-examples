#!/usr/bin/perl
#
# pop y push en arreglos
# shift, unshift
#

#pop elimina el ultimo elemento
@arreglo = 3..9;
print "Arreglo completo: @arreglo \n";
$fred = pop(@arreglo);
print "Haciendo pop: @arreglo valor de \$fred = $fred \n";
$barney = pop @arreglo;
print "Haciendo pop: @arreglo valor de \$barney = $barney \n";

#push agrega elementos al final del arreglo
push(@arreglo, 8);
print @arreglo,"\n";

push @arreglo, 9;
print @arreglo,"\n";

push @arreglo, 10..16;
print @arreglo,"\n";

push @arreglo, qw/ 17 18 19/;
print @arreglo,"\n";

#shift extrae el primer elemento del arreglo
@arreglo = qw / dino fred barney /;
print "arreglo = @arreglo \n";
$a = shift(@arreglo);
print "a = $a arreglo = @arreglo\n";

$b = shift @arreglo;
print "b = $b arreglo = @arreglo\n";

#unshift agrega elementos al inicio del arreglo
unshift(@arreglo, $b);
print @arreglo,"\n";
unshift(@arreglo, $a);
print @arreglo,"\n";
print "[0] = $arreglo[0] [1] = $arreglo[1] [2] = $arreglo[2] \n";

#interpolando arreglos en cadenas
$a = 2;
print "\@arreglo = @arreglo \n";
print "Este es $arreglo[$a - 1] \n";
$arreglo = "tom";
print "Este es ${arreglo}[$a - 1] \n";
print "Este es $arreglo"."[$a - 1] \n";
print "Este es $arreglo\[$a - 1]\n";
