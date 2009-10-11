package Controllers::Cds;
use strict;
use Models::Cds;
use Models::Artists;

sub new{
	my $this = shift;
	my $class = ref($this) || $this;
	my $self = {};
	
	my $model = Models::Cds->new();
	$self->{model} = $model;
	
	my $model_artists = Models::Artists->new();
	$self->{model_artists} = $model_artists;
	
	return bless $self, $class;
}

sub index{
	my $self = shift;
	my @data = $self->{model}->get_cds();
	
	return @data;
}

sub add{
	my $self = shift;
	my ($artist_id, $title) = @_;
	my @data;
	
	if (defined($title)){
		$self->{model}->add(($artist_id => $title));	
	}
	else{
		@data = $self->{model_artists}->get_artists();		
	}

	return @data;
}

sub edit{
	my $self = shift;
	my ($cd_id, $artist_id, $title) = @_;
	my @data;
	my @artists;
	
	if(defined($artist_id)){
		$self->{model}->edit($cd_id, $artist_id, $title);
	}
	else{
		@data = $self->{model}->get_cd($cd_id);
		@artists = $self->{model_artists}->get_artists();
	}

	return [@data], [@artists];
}

sub delete{
	my $self = shift;
	my $cd_id = shift if (@_);
	
	$self->{model}->delete($cd_id);
}
1;