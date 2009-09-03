#!/usr/bin/perl
#
# Referencias, son como los apuntadores en C
#
#

$scalar = "esto sera una referencia";
@arreglo = ("item1","item2",3,4,"item5");
%hash = ("nombre"=>"fred", "apellido"=>"flintstone");

sub foo{
    print "Valor = $_[0]\n";
}

#creando las referencias
$r_scalar = \$scalar;
$r_arreglo = \@arreglo;
$r_hash = \%hash;
$r_sub = \&foo;

print "Referencia - $r_scalar\n";
print "Referencia - $r_arreglo\n";
print "Referencia - $r_hash\n";
print "Referencia - $r_sub\n";

#obteniendo el valor  de la referencia al que apunta
# se usan los simbolos "$$" antes del nombre de la referencia
#scalar
print "\nObteniendo los valores de las referencias\n";
print "Referencia - $r_scalar - $$r_scalar\n";

#arreglos
print "Referencia - $r_arreglo - $$r_arreglo[1]\n";
print "Referencia - $r_arreglo - $r_arreglo->[2]\n";
print "Referencia - $r_arreglo - ${$r_arreglo}[3]\n";

#hash
print "Referencia - $r_hash - $$r_hash{'nombre'}\n";
print "Referencia - $r_hash - $r_hash->{'apellido'}\n";
print "Referencia - $r_hash - ${$r_hash}{'nombre'} ${$r_hash}{'apellido'}\n";

#sub
print "Referencia - $r_sub - ",&$r_sub("arg1"),"\n";
print "Referencia - $r_sub - ",$r_sub->("arg2"),"\n";
print "Referencia - $r_sub - ",&{$r_sub}("arg3"),"\n";

