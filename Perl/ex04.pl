#!/usr/bin/perl
#
# Estructuras de control if
#
#

my $name = 'Freddy';

if ($name lt 'fred'){
    print "'$name' comes after 'fred' in sorted order.\n\n";
}

$name = 'Sharon';

if ($name lt 'sharon'){
    print "'$name' comes after 'fred' in sorted order.\n";
} else{
    print "'$name' does not come after 'sharon'. \n";
    print "Maybe it's the same string, in fact. \n";
}

#valores booleanos
my $is_bigger = $name lt 'sharon';
if($is_bigger){
    print "True \n";
}

#entrada desde teclado
my $linea = <STDIN>;

if ($linea eq "\n"){
    print "Linea en blanco. \n";
}else{
    print "El contenido de la linea fue: $linea";
}

#eliminando el \n
chomp($linea = <STDIN>);
print "Sin salto de linea en $linea";
