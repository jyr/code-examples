package simplecd;
use Dancer;
use Template;
use Data::Dumper;

use Models::Artists;
use Models::Cds;
use Models::Tracks;

our $artist = Models::Artists->new();
our $cd = Models::Cds->new();
our $track = Models::Tracks->new();

get '/' => sub {
    template 'index';
};

get '/artists' => sub {
	my @list = $artist->get_artists();
	template "artists/index", {content => \@list};
};

get '/artists/add' => sub {
	template 'artists/add';
};

post '/artists/add' => sub {
	my $data = ([params->{name}]);
	$artist->add($data);
};

get '/artists/edit/:id' => sub{
	my $artist_id = params->{id};
	my @data = $artist->get_artist($artist_id);

	template 'artists/edit',{content => \@data};
};

post '/artists/edit' => sub {
	my $artist_id = params->{id};
	my $name = params->{name};
	
	$artist->edit($artist_id, $name);
};

get '/artists/delete/:id' => sub {
	my $artist_id = params->{id};
	
	$artist->delete($artist_id);
};

get '/cds' => sub {
	my @list = $cd->get_cds();
	template "cds/index",{content => \@list};
};

get '/cds/add' => sub {
	my @artists = $artist->get_artists();
	
	template "cds/add", {artists => \@artists};
};

post '/cds/add' => sub{
	my %data = (params->{artist_id} => params->{title});

	$cd->add(%data);
};

get '/cds/edit/:id' => sub{
	my $cd_id = params->{id};
	my @data = $cd->get_cd($cd_id);
	my @artists = $artist->get_artists();

	template 'cds/edit',{content => \@data, artists => \@artists};
};

post '/cds/edit' => sub{
	my $cd_id = params->{id};
	my $artist_id = params->{artist_id};
	my $title = params->{title};
	
	$cd->edit($cd_id, $artist_id, $title);
};

get '/cds/delete/:id' => sub {
	my $cd_id = params->{id};
	
	$cd->delete($cd_id);
};

get '/tracks' => sub {
	my @list = $track->get_tracks();
	template "tracks/index",{content => \@list};
};

get '/tracks/add' => sub{
	my @cds = $cd->get_cds();
	
	template "tracks/add", {cds => \@cds};
};

post '/tracks/add' => sub {
	my %data = (params->{cd_id} => params->{title});
	$track->add(%data);
};

get '/tracks/edit/:id' => sub{
	my $track_id = params->{id};
	my @data = $track->get_track($track_id);
	my @cds = $cd->get_cds();

	template 'tracks/edit',{content => \@data, cds => \@cds};
};

post '/tracks/edit' => sub{
	my $track_id = params->{id};
	my $cd_id = params->{cd_id};
	my $title = params->{title};
	
	$track->edit($track_id, $cd_id, $title);
};

get '/tracks/delete/:id' => sub {
	my $track_id = params->{id};
	
	$track->delete($track_id);
};
true;
