
use strict;
use warnings;

use Test::More;
use MetaCPAN::API::ESX;

my $esx = MetaCPAN::API::ESX->new();

my $author = $esx->author->filter(
  {
    term => { pauseid => 'KENTNL' },
  }
)->all;

use Data::Dump qw( pp );

pp $author;
pass('all good');

done_testing;

