#!/usr/bin/perl
#
# Estructura de control foreach
#
#

foreach $item (qw/ bedrock slate lava /){
    print "Una roca es $item. \n";
}

print "\n";
@rocks = qw/bedrock slate lava/;
foreach $item(@rocks){
    print "Una roca es $item. \n";
}

#Reemplazando la variable de control $item por $_ variable default y favorita de Perl
foreach(1..5) { print "Puedo contar $_! \n"; }

$_ = "Yabba dabba doo \n";
print; #por default imprime $_

#operador reverse invierte el orden de los elementos de una lista
@fred = 4..8;
print "\@fred = ",@fred,"\n";
@barney = reverse(@fred);
print "\@barney = ",@barney,"\n";

#cambiando el orden de los elementos de la lista
@fred = reverse @fred;
print "\@fred = ",@fred,"\n";

#operador sort para cadenas sigue el orden ASCIIbetical
@rocks = qw/ bedrock slate rubble granite /;
print "\@rocks = ",@rocks,"\n";
@sorted = sort(@rocks);
print "\@sorted = ",@sorted,"\n";

#ordenando e invirtiendo el orden
@back = reverse sort @rocks;
print "\@back = ",@back,"\n";

#cambiando @rocks a contenido ordenado
@rocks = sort @rocks;
print "\@rocks = ",@rocks,"\n";

#scalares y contexto de lista
@people = qw/ fred barney betty /;
@sorted = sort @people;
$number = 5 + @people;
print "\$number = ",$number,"\n";

#se puede asignar a un scalar o lista diferentes causas de contexto
@list = @people;
print "\@list = ",@list,"\n";
$number = @people;
print "\$number = ",$number,"\n";

#usando list-producing en un context escalar
($wilma, $betty) = @people;
print "\$wilma = ",$wilma," \$betty = $betty \n";

unshift @people, $betty;
print "\@people = @people \n";

#forzando un contexto scalar
@rocks = qw(talc quarts jade obsidian);
print "Como cuantas piedras tienes?\n";
print "Tengo", @rocks," rocas!\n";  #incorrecto
print "Tengo ", scalar @rocks ," rocas!\n";     #correcto

#<STIDN> en list context se usa ctrl+d para dejar de leer y continuar
@lines = <STDIN>;
print chomp(@lines); #elemina salto de linea
print "$lines[0] $lines[1], $lines[2] \n";