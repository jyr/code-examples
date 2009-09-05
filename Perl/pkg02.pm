# Leyendo datos desde GET

package pkg02;

use base 'CGI::Application';

sub setup{
	my $self = shift;

	$self->run_modes(
		'mostrar' => 'imprimir'
	);

	$self->start_mode('mostrar');
}

sub imprimir{
	my $self = shift;
	my $q = $self->query();

	my %values = $q->Vars;
	my $output .= $q->start_html(-title => "CGI::Application");
	$output .= $q->h1("Obteniendo valores desde GET");
	$output .= $q->b("username: ");
	$output .= $values{'username'};
	$output .= $q->b(" password: ");
	$output .= $values{'password'};
	$output .= $q->end_html();

	return $output;

}

1;	#terminando el paquete
