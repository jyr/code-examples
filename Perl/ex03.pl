#!/usr/bin/perl
#
# Operadores por asociatividad y precedencia
# ver tabla 2-2 pagina 31
#
print "right associative \n";
print 4 ** 3 ** 2;
print "\n\n";

print "left associative \n";
print 72 / 12 / 3;
print "\n\n";

# operador aritmeticos unitarios
$negativo = -1;
print "Ahora el valor de \$negativo $negativo\n";
print "increment con --\$negativo ", --$negativo," o \$negativo-- ", $negativo--,"\n\n";

$positivo = +10;
print "El valor de positivo es $positivo";
print "increment con ++\$positivo ", ++$positivo," o \$positivo++ ", $positivo++,"\n";

#operadores relacionales de cadena
print "Operador eq(==) regresa 1(true) ","cad" eq "cad","\n";
print "Operador ne(!=) regresa 1(true) ","cad1" ne "cad","\n";
print "Operador lt(<) regresa 1(true) ","cad" lt "cad1","\n";
print "Operador le(<=) regresa 1(true) ","cad1" le "cad1","\n";
print "Operador gt(>) regresa 1(true) ","cad1" gt "cad","\n";
print "Operador ge(>=) regresa 1(true) ","cad1" ge "cad1","\n";
print "Operador cmp(>) regresa 1(>), 0(==), -1(<) ","cad1" cmp "cad","\n";

#operador ternario
my $valor = 20;
my $resultado = ($valor < 12) ? "Mayor" : "Menor";
print "Valor = $valor, entonces Resultado es $resultado \n";

#operador de repeticion de cadenas
my $cadena = "am";
print "${cadena}a" x 4,"\n";