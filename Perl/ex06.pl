#!/usr/bin/perl
#
# Arreglos se usa el simbolo "@" para identificarlos y sus 
# elementos son separadas por comas dentro anidados por parentesis
# El plural de perl son los arrays

#PLURAL
@fred = ("yabba ", "dabba ", "doo ", 3);

#SINGULAR
print $fred[0];
print $fred[1];
print $fred[2];
print $fred[3],"\n";

#Perl convierte el numero a una cadena al concatenar
$fred[3] .= "whatsis";
print $fred[3],"\n\n";

#Jugando con indices
$indice = 2.2;
print $fred[$indice - 1],"\n";

#Usando undef, no imprime nada no existen los valores
$blanco = $fred[12_12];
#warning
print $blanco, "\n";
$blanc = $mel;
#warning
print $blanc,"\n";

#indices especiales
$rocks[0] = 'bedrock';
$rocks[1] = 'slate';
$rocks[2] = 'lava';
$rocks[3] = 'crushed rock';
$rocks[99] = 'schist';

#el simbolo "#" obtiene el indice del ultimo elemento del arreglo
$end = $#rocks;
print $end,"\n";

#Desaparece los elementos despues del indice 2
$#rocks = 2;
print $rocks[3];

#Se reactive el arreglo a 99 como ultima posicion y se le asigna una valor
$#rocks = 99;
$rocks[$#rocks] = 'hard rock';
print $rocks[99],"\n";

#Una manera facil de obtener el ultimo elemento
print $rocks[-1],"\n";

#Una manera facil de obtener el primer elemento
$dead_rock = $rocks[-100];
print $dead_rock,"\n";

