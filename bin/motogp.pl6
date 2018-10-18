use v6.c;
use Bailador;

use lib 'lib';

use User;


my $version = '0.0.1';

get '/' => sub {
    template 'index.html', { version => $version }
}


my $controller = User.new(data => {foo => 1, bar => 2});
get    '/arrancar'       => { :$controller, to => 'brumbrum'};

baile();
