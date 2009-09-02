#!/usr/bin/perl
#
# Subrutinas
#
#

#se colocan () cuando no a sido definida la subrutina
&marine();

#definicion
sub marine {
    $number += 1;
    print "Hello, sailor number $number \n";
}

# invocando a la subrutina se debe colocar 
# el simbolo "&" antes del nombre de la subrutina
&marine;
&marine;

# regresando valores, si no se usa "return"
# la subrutina regresa la ultima linea de codigo
sub sum_of_fred_and_barney{
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney;
}

$fred = 2;
$barney = 5;
$result = &sum_of_fred_and_barney;
print "Result is= $result \n";

#cuando la ultima linea es un print regresa el valor de 1
sub sum_of_fred_and_barney_print{
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney;
    print "return null \n";
}

$fred = 4;
$barney = 5;
$result = &sum_of_fred_and_barney_print;
print "Now with print, Result is= $result \n";

#Evaluando expresiones
sub larger_of_fred_or_barney{
    if($fred > $barney){
        $fred;
    }else{
        $barney;
    }
}

print &larger_of_fred_or_barney,"\n";

#regresando una lista de valores
sub list_from_fred_to_barney{
    if($fred < $barney){
        $fred..$barney;
    }else{
        reverse $barney..$fred;
    }
}
$fred = 10;
@list = &list_from_fred_to_barney;
print @list,"\n";

$fred = 1;
@list = &list_from_fred_to_barney;
print @list,"\n";