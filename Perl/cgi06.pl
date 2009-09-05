#!/opt/local/bin/perl
#
# Usando CGI::Application con el metodo GET
#
#

use strict;
use pkg02;

my $app = pkg02->new();
$app->run();
