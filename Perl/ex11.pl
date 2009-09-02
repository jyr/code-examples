#!/usr/bin/perl
#
# subrutinas argumentos
#
#

# por defualt todos los argumentos caen en el arreglo $_
sub max{
    if($_[0] > $_[1]){
        print "Mayor $_[0] \n";
    }else{
        print "Mayor $_[1] \n";
    }
}

&max(3,4);
&max(4,3);

#variables privadas
sub min{
    my ($a,$b) = @_;
    if($a > $b){
        print "Menor $b \n";
    }else{
        print "Menor $a \n";
    }
}

print "\nvariables privadas\n";
&min(3,4);
&min(4,3);

#variables locales
sub equal{
    local($a, $b) = @_;
    if($a == $b) { print "$a y $b son iguales\n" } else { print "$a y $b son diferentes"; }
}

print "\n variables locales \n";
&equal(4,4);

#diferencia entre local y my

#variable global
$office = "global";
&say();
&barney();
&fred();
&say();
sub say{
    print $office,"\n";
}

sub fred{
    # ahora fred creo su propia variable $office local
    local($office) = "fred";
    print "\$office local $office\n";
    &say();
}

sub barney{
    # ahora barney creo su propia variable $office privada
    my($office) = "barney";
    print "\$office privada $office\n";
    &say();
}
