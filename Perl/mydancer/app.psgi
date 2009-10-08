# This is a PSGI application file for Apache+Plack support
use lib '/Users/jyr/Desarrollo/git-projects/code-examples/Perl/mydancer';
use mydancer;

use Dancer::Config 'setting';
setting apphandler  => 'PSGI';
setting environment => 'production';
Dancer::Config->load;

my $handler = sub {
    my $env = shift;
    local *ENV = $env;
    my $cgi = CGI->new();
    Dancer->dance($cgi);
};
