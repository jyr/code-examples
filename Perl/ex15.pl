#!/usr/bin/perl
#
# Entrada desde el teclado
#
#

#chomp elimina salto de linea
chomp($linea = <STDIN>);
print $linea,"\n";

#defined revisa que lineas tenga un valor para que lo imprima
while(defined($lineas = <STDIN>)){
    print "Yo dije $lineas";
}

#otra forma de hacerlo
while(<STDIN>){
    print "Tu dijiste $_";
}