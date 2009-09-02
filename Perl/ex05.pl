#!/usr/bin/perl
#
# Estructuras de control while
#
#

$contador = 0;
while ($contador < 5){
    print "contador ahora vale: $contador \n";  #contador aumenta de 0 a 4, mientras se cumpla la condicion
    ++$contador;
}

#valor undef se usa para poner un valor de cero a una variable
print $sum += $contador, "\n";

#funcion defined se usa para saber si una variable tiene un valor
$madonna = undef;
if(defined($madonna)){
    print "El comentario fue: $madonna";
}else{
    print "sin comentario!\n";
}