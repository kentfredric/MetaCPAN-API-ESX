
use strict;
use warnings;

use Test::More;

use MetaCPAN::API::ESX;

my $esx = MetaCPAN::API::ESX->new();
use ElasticSearch;
$ElasticSearch::DEBUG = 1;

my $scroller = $esx->author->size(100)->filter(
  {
    or => [ { term => { country => 'NZ' } }, { term => { country => 'AU' } } ],
  }
)->scroll('1m');

while ( my $result = $scroller->next ) {

  note sprintf "%4s: %20s => %-40s ( %s )\n", $result->country, $result->pauseid, $result->name, join q{,},
    grep { defined } $result->city, $result->region;

}
pass('all good');

done_testing;

