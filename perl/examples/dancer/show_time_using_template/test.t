use strict;
use warnings;

use Test::More;
use Plack::Test;
use HTTP::Request::Common;

my $app = do './app.psgi';

my $test = Plack::Test->create($app);
my $res = $test->request(GET '/');

is $res->status_line, '200 OK', 'Status';
like $res->content, qr{<h1>Hello World!</h1>};
like $res->content, qr{\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d};

done_testing();