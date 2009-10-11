package Controllers::Tracks;
use strict;
use Models::Tracks;
use Models::Cds;

sub new{
	my $this = shift;
	my $class = ref($this) || $this;
	my $self = {};
	
	my $model = Models::Tracks->new();
	$self->{model} = $model;
	
	my $model_cds = Models::Cds->new();
	$self->{model_cds} = $model_cds;
	
	return bless $self, $class;
}

sub index{
	my $self = shift;
	my @data = $self->{model}->get_tracks();
	
	return @data;
}

sub add{
	my $self = shift;
	my ($cd_id, $title) = @_;
	my @data;
	
	if (defined($title)){
		$self->{model}->add(($cd_id => $title));	
	}
	else{
		@data = $self->{model_cds}->get_cds();
	}

	return @data;
}

sub edit{
	my $self = shift;
	my ($track_id, $cd_id, $title) = @_;
	my @data;
	my @cds;
	
	if(defined($cd_id)){
		$self->{model}->edit($track_id, $cd_id, $title);
	}
	else{
		@data = $self->{model}->get_track($track_id);
		@cds = $self->{model_cds}->get_cds();
	}

	return [@data], [@cds];
}

sub delete{
	my $self = shift;
	my $track_id = shift if (@_);
	
	$self->{model}->delete($track_id);
}
1;