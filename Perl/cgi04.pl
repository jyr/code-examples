#!/usr/bin/perl
#
# Obteniendo datos por el POST
#
#
print "Content-type: text/html\n\n";
my %values;

#leyendo standar input
read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});

my @pairs = split(/&/, $buffer);

foreach $pair(@pairs){
	my($name,$value) = split(/=/, $pair);
	$values{$name} = $value;
}
print "
<html>
<head>
 <title>METHOD POST</title>
</head>
<body>
 <form action=\"http://perl/cgi-bin/cgi04.pl\" method=\"post\">
  <input type=\"text\" name=\"username\">
  <input type=\"password\" name=\"password\">
  <input type=\"submit\" name=\"aceptar\">
 </form>

 <h1>Obtenidos por post</h1>
 <b>Username: </b>$values{'username'}
 <b>Password: </b>$values{'password'}
</body>
<html>
";
