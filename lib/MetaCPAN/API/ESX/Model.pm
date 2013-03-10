
use strict;
use warnings;

package MetaCPAN::API::ESX::Model;
use Moose;
use ElasticSearchX::Model;

index v0 => ( namespace => 'MetaCPAN::API::ESX::Model', );

__PACKAGE__->meta->make_immutable;
