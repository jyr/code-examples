# Leyendo datos desde POST

package pkg03;

use base 'CGI::Application';

sub setup{
	my $self = shift;

	$self->run_modes(
		'obtener' => 'leer',
		'mostrar' => 'imprimir'
	);

	$self->start_mode('obtener');
	$self->mode_param('accion');
}

sub leer{
	my $self = shift;
	my $q = $self->query();
	
	my $output .= $q->start_html(-title => "CGI::Application");
	$output .= $q->start_form();
	$output .= "Username ";
	$output .= $q->textfield(-name => "username");
	$output .= "Password ";
	$output .= $q->textfield(-name => "password");
	$output .= $q->hidden(-name => "accion", -value => 'mostrar');
	$output .= $q->submit();
	$output .= $q->end_form();
	$output .= $q->end_html(); 
}

sub imprimir{
	my $self = shift;

	#instanciando
	my $q = $self->query();
	my %values = $q->Vars;

	my $output .= $q->start_html(-title => "CGI::Application");
	$output .= $q->h1("Obteniendo valores desde POST");
	$output .= $q->b("username: ");
	$output .= $values{'username'};
	$output .= $q->b("password: ");
	$output .= $values{'password'};
	$output .= $q->end_html();
	
}
1; # Termina el paquete
