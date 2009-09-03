#!/usr/bin/perl
#
# Hashes se identifican por el simbolo "%"
#
#

#acceso al hash -> $hash{$some_key}
$family_name{"fred"} = "flinstone";
$family_name{"barney"} = "rubble";

print "Se impremen key y values = ",%family_name,"\n";

#declarando de otra forma
%family_name = ("fred" =>"flinstone", "barney" => "rubble");
print $family_name{"fred"},$family_name{"barney"},"\n";

#una manera mas de definir el hash
%family_name = ("fred","flistone","barney","rubble");
print %family_name,"\n";

#otras maneras de accesar al hash
foreach $person(qw< barney fred >){
    print "He oido hablar de la $person $family_name{$person}.\n";
}

$var = "bar";
print $family_name{$var."ney"},"\n";

#cambiando los valores
$family_name{"barney"} = "pebbles";
$bedrock = $family_name{"barney"};
print $bedrock,"\n";

#agregando nuevos key/value
$family_name{"wilma"} = "flinstone";
$family_name{"betty"} = $family_name{"barney"};
print $family_name{"wilma"}, $family_name{"betty"},"\n";

# funciones para extraer keys y values del hash
# el resultado es una lista de keys y values
%hash = (1 => "a", 2 => "b", 3 => "c", 4 => "d");
@keys = keys %hash;
@values = values %hash;
print "keys = @keys values = $values[$#values] \n";

# obteniendo la cantidad de elementos de keys y values
$keys = keys %hash;
$values = values %hash;
print "keys = $keys values = $values \n";

#funcion each sirve para obtener por separado
# los keys y values en un ciclo while
print "while \n";
while(($key, $value) = each %hash){
    print "$key => $value \n";
}

# each con un hash vacio
# en este caso no imprime nada ya que 
# $key y $value tendran undef
while(($key, $value) = each %hashs){
    print "a$key => $value \n";
}

#otra manera de obtener keys y values con foreach
print "foreach \n";
foreach $key (sort keys %hash){
    $value = $hash{$key};
    print "$key => $value \n";
}

#funcion exists 
if(exists $hash{3}) { print "existe y es $hash{3}\n";}

#funcion delete
if(exists $hash{3}) {
    print "existia y era $hash{3}\n"; 
    delete $hash{3};
}
print %hash,"\n";