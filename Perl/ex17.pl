#!/usr/bin/perl
#
# Salida formateada
#
#
$usuario = "fred";
$dias = 1;
printf "Hola , %s; tu clave expiro en %d dias \n",$usuario, $dias;

# %g contempla flotante, enteros y exponencial
printf "%g\n %g\n %g\n", 4/3, 22/2, 51**17;

#agregando espacios
printf "%9d\n", 41;
#justificando a la izqierda
printf "%-9d\n", 41;

#colocando cierto numero de digiotos despues del punto decimal
printf "%3.3f\n", 41.12121212;

printf "%3.5d\n", 41;

#colocando el simbolo de porcentaje con %%
printf "%3.3f%%\n", 41.12121212;

#arreglos con formata de salida a pantalla
@items = qw(wilma dino pebbles);
$format = "Los items son:\n".("%50s\n" x @items);
printf $format, @items;

#otra forma
printf "Los items son:\n".("%50s\n" x @items), @items;