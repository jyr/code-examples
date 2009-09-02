#!/usr/bin/perl
#
# Subrutinas - validando cantidad de paramtros
#
#

&max(3,4,5);
sub max{
    if(@_ !=2){
        print "PRECAUCION, se excede la cantidad de parametros\n";
    }else{
        if($_[0] > $_[1]){
            print "Mayor $_[0] \n";
        }else{
            print "Mayor $_[1] \n";
        }
    }
}

# una mejor rutina max para obtener n cantidad de argumentos
# considerando el mayor valor de estos
$maximum = &max_better(2, 4, 5, 7, 1);
print $maximum," \n";
sub max_better{
    my($max) = shift @_;
    foreach (@_) {
        if($_ > $max){
            $max = $_;
        }
    }
    $max;
}

$maximum = &max_better("a", "y", "t", "z", "e");
print $maximum," \n";
sub max_better{
    my($max) = shift @_;
    foreach (@_) {
        if($_ gt $max){
            $max = $_;
        }
    }
    $max;
}

#lista vacia regresa undef
$maximum = &max_empty(@numbers);
print $maximum," \n";
sub max_empty{
    my($max) = shift @_;
    foreach (@_) {
        if($_ > $max){
            $max = $_;
        }
    }
    $max;
}