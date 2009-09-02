#!/usr/bin/perl
#
# Listas
#
#

#una lista de 3 valores
@lista = (1..3);
print "[0] = ",$lista[0]," [1] = ",$lista[1]," [2] = ",$lista[2],"\n";

#rango determinado
$inicio = 10;
$fin = 13;
@lista = ($inicio..$fin);
print @lista,"\n";
print "[2] = ",$lista[2],"\n";

#usando escalares para los valores de la lista
$a=1;$b=2;$c=3;$d=4;
@lista = ($a,$b,$c,$d);
print @lista,"\n";

#sumando escalares dentro de la lista
@lista = ($a+$d,$b+$c);
print @lista,"\n";

#atajos para crear listas
@lista = qw/ 1 2 3 4 5 /;
print @lista,"\n";

@lista = qw! 1 2 3 4 5 !;
print @lista,"\n";

@lista = qw# 1 2 3 4 5 #;
print @lista,"\n";

@lista = qw( 1 2 3 4 5 );
print @lista,"\n";

@lista = qw{ 1 2 3 4 5 };
print @lista,"\n";

@lista = qw[ 1 2 3 4 5 ];
print @lista,"\n";

@lista = qw< 1 2 3 4 5 >;
print @lista,"\n\n";

#asignacion de listas
($fred, $barney, $dino) = ("flintstone", "rubble", undef);
print "\$fred = $fred \$barney = $barney \$dino = $dino \n\n";

#intercambio de valores
($fred, $barney) = ($barney, $fred);
print "\$fred = $fred \$barney = $barney \n";

($barney[0], $barney[1]) = (1, 2);
print "\[0] = $barney[0] \[1] = $barney[1] \n\n";

($barney) = (1, 2);
print "Otra forma [0] = $barney[0] \[1] = $barney[1] \n\n";

#lista vacia
@lista = ();
print "Lista vacia",@lista,"\n\n";

#otra manera de llenar una lista
@lista = 1..2*3;
print @lista,"\n";

#lista de listas
@listas = (@lista, ("ab","cd","ef"),(1,2,3));
print @listas,"\n";

#copiando listas
@nuevaLista = @listas;
print @nuevaLista,"\n";