package simplecd;
use Dancer;
use Template;
use Data::Dumper;

use Controllers::Artists;
use Controllers::Cds;
use Controllers::Tracks;

use Models::Artists;
use Models::Cds;
use Models::Tracks;

our $artists = Controllers::Artists->new();
our $cds = Controllers::Cds->new();
our $tracks = Controllers::Tracks->new();

our $artist = Models::Artists->new();
our $cd = Models::Cds->new();
our $track = Models::Tracks->new();

get '/' => sub {
    template 'index';
};

get '/artists' => sub {
	my @data = $artists->index();
	template "artists/index", {content => \@data};
};

get '/artists/add' => sub {
	template 'artists/add';
};

post '/artists/add' => sub {
	$artists->add(([params->{name}]));
};

get '/artists/edit/:id' => sub{
	my @data = $artists->edit(params->{id}, undef);
	template 'artists/edit',{content => \@data};
};

post '/artists/edit' => sub {
	$artists->edit(params->{id}, params->{name});
};

get '/artists/delete/:id' => sub {
	$artists->delete(params->{id});
};


get '/cds' => sub {
	my @data = $cds->index();
	template "cds/index",{content => \@data};
};

get '/cds/add' => sub {
	my @data = $cds->add(undef, undef);
	
	template "cds/add", {artists => \@data};
};

post '/cds/add' => sub{
	$cds->add(params->{artist_id}, params->{title});
};

get '/cds/edit/:id' => sub{
	my @data = $cds->edit(params->{id}, undef);
	template 'cds/edit',{content => $data[0], artists => $data[1]};
};

post '/cds/edit' => sub{
	$cds->edit(params->{id}, params->{artist_id}, params->{title});
};

get '/cds/delete/:id' => sub {	
	$cd->delete(params->{id});
};

get '/tracks' => sub {
	my @data = $tracks->index();
	template "tracks/index",{content => \@data};
};

get '/tracks/add' => sub{
	my @data = $tracks->add(undef, undef);
	template "tracks/add", {cds => \@data};
};

post '/tracks/add' => sub {
	$tracks->add(params->{cd_id}, params->{title});
};

get '/tracks/edit/:id' => sub{
	my @data = $tracks->edit(params->{id}, undef);
	template 'tracks/edit',{content => $data[0], cds => $data[1]};
};

post '/tracks/edit' => sub{
	$tracks->edit(params->{id}, params->{cd_id}, params->{title});
};

get '/tracks/delete/:id' => sub {
	$tracks->delete(params->{id});
};
true;
