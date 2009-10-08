package mydancer;

use controllers::Loadimages;
use Dancer;
use Template;

get '/' => sub {
    template 'index';
};

get '/a/quantity/:quantity/orden/:orden' => sub {
	my ($quantity) = params->{quantity};
	my ($orden) = params->{orden};
    template 'a',{quantity => $quantity, orden=>$orden};
};

get '/b/quantity/:quantity/orden/:orden' => sub {
	my ($quantity) = params->{quantity};
	my ($orden) = params->{orden};
	
	$b = controllers::Loadimages->new();	
	$b->connect($quantity);
	$b->order($orden);
};

true;
