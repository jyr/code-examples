package controllers::Loadimages;
use strict;

sub new{
	my $this=shift;
	my $class = ref($this) || $this;
	my $self = {};
	
	$self->{quantity} = 0;
	$self->{orden} = undef;
#	$self->{result} = undef;
#	$self->{images} = undef;
	
	bless $self, $class;
	return ($self);
}

sub connect{
	my $self = shift;
	$self->{quantity} = shift if (@_);

	return $self->{quantity};
}

sub DESTROY{
	my $self=shift;
	delete ($self->{quantity});
	delete ($self->{orden});
}
1;