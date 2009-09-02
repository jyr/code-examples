#!/usr/bin/perl
# Los scalares son el tipo de dato minimo en perl
# pueden ser cadenas, caracteres o numeros (enteros, flotantes)
# un scalar se identifica por el simbolo "$"

$caracter = 's';
print "scalar caracter = ".$caracter."\n";

$entero = -40;
print "scalar entero = ".$entero."\n";

$flotante = 7.25e45;
print "scalar flotante = ".$flotante."\n";

$Caracter = 'Mi cadena';
print "scalar cadena = ".$Caracter."\n";

$fred = 17;
print "\$fred = ".$fred."\n";

$barney = 'Hello';
print "\$barney = ".$barney."\n";

$barney = $fred + 3;
print "\$barney = \$fred + 3 = ".$barney."\n";

$barney = $barney * 3;
print "\$barney = \$barney * 3 = ".$barney."\n";

$barney = 'Hello';
print "\$barney = ".$barney."\n";

$barney = $fred * 3;
print "\$barney = \$fred * 3 = ".$barney."\n";

$barney **=2;
print "\$barney **= 5 = ".$barney."\n";

print "The answer is ", 4*5,".\n";

$barney = 20;
print "The value for \$barney is $barney \n";

$what = "brontosaurus steak";
$n = 3;

print "fred ate $n ${what}s.\n";