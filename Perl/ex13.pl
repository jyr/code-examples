#!/usr/bin/perl
#
# Subrutinas - Notas sobre el lexico (my) 
#
#

# my se puede usar en bloques dentro de codigo como
# if, while, foreach no es exclusivo de subrutinas
foreach(1..10){
    my($cuadrado) = $_ * $_;    #list context
    print "$_ cuadrado es $cuadrado.\n";
}

@lista = 1..4;
print @lista,"\n";
my($cuadrado) = @lista;    #list context
print "list context $cuadrado\n";
my(@cuadrado) = @lista;    #list context
print "list context @cuadrado\n";
my $cuadrado = @lista;    #scalar context
print "scalar context $cuadrado\n";

#se usa para aplicar buenas reglas de programacion
# descomentar para ver lo que hace
#use strict;

my $bamm_bamm = 3;
$bammbamm +=1;
print $bammbamm,"\n";

# el operador return se usa para regresa un valor
# donde se el indique, por lo gral usado en subrutinas
my @nombres = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $resultado = &que_elemento_es("dino", @nombres);

print $resultado,"\n";

sub que_elemento_es{
    my($que, @lista) = @_;
    foreach (0..$#lista) {
        if($que eq $lista[$_]){
            return "$lista[$_] = [$_]";
        }
    }
}