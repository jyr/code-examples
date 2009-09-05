#!/opt/local/bin/perl
#
# Usando CGI:Application desde un paquete
#
#
use strict;
#use lib '/opt/local/apache2/htdocs/perl/cgi-bin';
use pkg01;

my $app = pkg01->new();
$app->run();
