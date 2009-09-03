#!/usr/bin/perl
#
# Entrad estandar desde teclado
#
#

#perl -w ex16.pl ex01.pl 
#se usa @ARGV
while(defined($linea = <>)){
    print "Argumentos $linea\n";
}