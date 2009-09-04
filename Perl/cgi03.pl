#!/usr/bin/perl
#
# Obteniendo datos desde GET
# http://localhost/cgi-bin/cgi03.pl?username=jyr&password=1234
#
print "Content-type: text/html\n\n";
my (%values);

# $ENV es un hash que contiene las variables de entorno
$buffer = $ENV{'QUERY_STRING'};

@pairs = split(/&/, $buffer);
#print @pairs,"\n";
foreach $pair(@pairs){
	my($name, $value) = split(/=/, $pair);
	$values{$name} = $value;
}

print "
<html>
<head>
 <title>METHOD GET</title>
</head>
<body>
 <h1>Obtenidos por get</h1>
 <b>Username: </b>$values{'username'}
 <b>Password: </b>$values{'password'}
</body>
<html>
";
