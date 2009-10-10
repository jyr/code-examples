package Models::Tracks;
use strict;
use Database::Main;

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
	my ($cd_id, $title) = @_;
	my @tracks;

	push @tracks, [$cd_id, $title];	
	$self->{schema}->populate('Track', [ [qw/cd title/], @tracks]);
}

sub get_tracks{
	my $self = shift;
	my @tracks;
	
	my $result = $self->{schema}->resultset('Track');
	
	while (my $data = $result->next){
		push @tracks, {'id' => $data->id, 'cd' => $data->cd, 'title' => $data->title};
	}
	
	return @tracks;
}

sub get_track{
	my $self = shift;
	my $track_id = shift if (@_);
	
	my $result = $self->{schema}->resultset('Track')->search(
		{
			'trackid' => $track_id
		}
	);

	my $data = $result->first;
	push my @track, {'id' => $data->id, 'cd' => $data->cd, 'title' => $data->title};
	return @track;
}

sub edit{
	my $self = shift;
	my ($track_id, $cd_id, $title) = @_;

	my $result = $self->{schema}->resultset('Track')->find({ trackid => $track_id });

	$result->cd($cd_id);
	$result->title($title);
	$result->update;
}

sub delete{
	my $self = shift;
	my $track_id = shift if (@_);	
	my $result = $self->{schema}->resultset('Track')->find({ trackid => $track_id});
	
	$result->delete();
}
1;