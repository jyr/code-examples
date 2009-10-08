package controllers::Loadimages;
use strict;
use LWP::Curl;

our @names = ();
our @images = ();
our $result;
our $code;
our $source = 'src="http://www.decidestaffing.com/ejerciciophp/images_ex/';

sub new{
	my $this=shift;
	my $class = ref($this) || $this;
	my $self = {};
		
	$self->{quantity} = 0;
	$self->{orden} = undef;

	bless $self, $class;
	return ($self);
}

sub connect{
	my $self = shift;
	my $curl = LWP::Curl->new();
	$curl->agent_alias( 'Linux Mozilla' );
	$self->{quantity} = shift if (@_);

	my $url = 'http://www.decidestaffing.com/ejerciciophp/exercise.php?quantity='.$self->{quantity};

	$result = $curl->get($url);
	print STDERR $result;
	&get_images();
}

sub get_images{
	my $self = shift;
	@images = split('<img src="images_ex/', $result);
}

sub get_names{
	my $self = shift;

	my $item;
	foreach $item(@images){
		$item = substr($item, 0, -3);
		push(@names, $item);
	}

}

sub order{
	my $self = shift;
	$self->{orden} = shift if (@_);
	
	&get_names();
	
	if ($self->{orden} eq 'asc'){
		@names = sort(@names);
		@images = sort(@images);
	}else{
		@names = reverse(sort(@names));
		@images = reverse(sort(@images));
	}

	$code = &parse();
	return $code;
}

sub parse{
	my $i;
	$code = '';
	
	for($i=0; $i<= $#names; $i++){
	        $code .= '<img id="'.$names[$i].'" '.$source.$images[$i].'">';
	}
	@names = ();
	@images = ();
	return $code;
}
1;