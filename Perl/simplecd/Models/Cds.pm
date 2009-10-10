package Models::Cds;
use strict;
use Database::Main;
use Data::Dumper;

sub new{
	my $this = shift;
	my $class = ref($this) || $this;
	my $self = {};
	
	my $schema = Database::Main->connect('dbi:mysql:dbname=simplecd', 'root', 'nada');
	$self->{schema} = $schema;
	
	return bless $self, $class;
}

sub add{
	my $self = shift;
	my ($artist_id, $title) = @_;
	my @cds;

	push @cds, [$title, $artist_id];
	
	$self->{schema}->populate('Cd', [ [qw/title artist/], @cds]);
}

sub get_cds{
	my $self = shift;
	my @cds;
	
	my $result = $self->{schema}->resultset('Cd');
	
	while (my $data = $result->next){
		push @cds, {'id' => $data->id, 'artist' => $data->artist, 'title' => $data->title};
	}
	
	return @cds;
}

sub get_cd{
	my $self = shift;
	my $cd_id = shift if (@_);
	
	my $result = $self->{schema}->resultset('Cd')->search(
		{
			'cdid' => $cd_id
		}
	);

	my $data = $result->first;
	push my @cd, {'id' => $data->id, 'artist' => $data->artist, 'title' => $data->title};
	return @cd;
}

sub edit{
	my $self = shift;
	my ($cd_id, $artist_id, $title) = @_;

	my $result = $self->{schema}->resultset('Cd')->find({ cdid => $cd_id });

	$result->artist($artist_id);
	$result->title($title);
	$result->update;
}

sub delete{
	my $self = shift;
	my $cd_id = shift if (@_);	
	my $result = $self->{schema}->resultset('Cd')->find({ cdid => $cd_id});
	
	$result->delete();
}

1;