package Controllers::Artists;
use strict;
use Models::Artists;
use Data::Dumper;

sub new{
	my $this = shift;
	my $class = ref($this) || $this;
	my $self = {};
	
	my $model = Models::Artists->new();
	$self->{model} = $model;
	
	return bless $self, $class;
	
}

sub index{
	my $self = shift;
	my @data = $self->{model}->get_artists();
	
	return @data;
}

sub add{
	my $self = shift;
	my $name = shift if (@_);

	$self->{model}->add($name);
	
}

sub edit{
	my $self = shift;
	my ($artist_id, $name) = @_;
	my @data = ();

	if (defined($name)){
		$self->{model}->edit($artist_id, $name);
	}
	else{
		@data = $self->{model}->get_artist($artist_id);	
	}
	
	return @data;
}

sub delete{
	my $self = shift;
	my $artist_id = shift if (@_);
	
	$self->{model}->delete($artist_id);
}
1;