package Database::Main::Result::Track;
use base qw/DBIx::Class/;
__PACKAGE__->load_components(qw/Core/);
__PACKAGE__->table('track');
__PACKAGE__->add_columns(qw/ trackid cd title /);
__PACKAGE__->set_primary_key('trackid');
__PACKAGE__->belongs_to('cd' => 'Database::Main::Result::Cd');

1;