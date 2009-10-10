package Models::Artists;
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
	my @data = shift if (@_);

	$self->{schema}->populate('Artist', [ [ qw/name/ ], @data,]);
}

sub get_artists{
	my $self = shift;
	my @artists;
	
	my $result = $self->{schema}->resultset('Artist');
	
	while (my $data = $result->next){
		push @artists, {'id'=>$data->id, 'name'=>$data->name};
	}
	
	return @artists;
}

sub get_artist{
	my $self = shift;
	my $artist_id = shift if (@_);
	
	my $result = $self->{schema}->resultset('Artist')->search(
		{
			'artistid' => $artist_id
		}
	);

	my $data = $result->first;
	push my @artist, {'id' => $data->id, 'name' => $data->name};
	return @artist;
}

sub edit{
	my $self = shift;
	my ($artist_id, $name) = @_;

	my $result = $self->{schema}->resultset('Artist')->find({ artistid => $artist_id });

	$result->name($name);
	$result->update;
}

sub delete{
	my $self = shift;
	my $artist_id = shift if (@_);	
	my $result = $self->{schema}->resultset('Artist')->find({ artistid => $artist_id});
	
	$result->delete();
}
1;