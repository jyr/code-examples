#nombre del paquete pkg01
#HelloWorld
package pkg01;

#cargando y heredando todas las funciones de CGI::Application
use base 'CGI::Application';

#Inicializando la aplicacion
sub setup{
	my $self = shift;
	
	#creacion del mapa
	#se usa un %hash = ('nombre_del_modo' => 'subrutina')
	$self->run_modes(
		'saludo' => 'ver_saludo'
	);
	$self->start_mode('saludo');
}

sub ver_saludo{
	my $self = shift;

	my $q = $self->query();
	$output .= $q->start_html(-title => "CGI::Application");
	$output .= $q->h1("Hola Mundo! desde CGI::Application");
	$output .= $q->end_html();

	return $output;
}
1;	#se usa para terminar el paquete
