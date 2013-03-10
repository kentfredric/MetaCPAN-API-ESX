package MetaCPAN::API::ESX::Model::Distribution;
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for distribution

use Moose;
use ElasticSearchX::Model::Document;

# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       dynamic    => "true",
#       properties => {
#                       active   => { store => "yes", type => "integer" },
#                       closed   => { store => "yes", type => "integer" },
#                       new      => { store => "yes", type => "integer" },
#                       open     => { store => "yes", type => "integer" },
#                       rejected => { store => "yes", type => "integer" },
#                       resolved => { store => "yes", type => "integer" },
#                       source   => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                       stalled  => { store => "yes", type => "integer" },
#                       type     => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                     },
#     },
#     propertyname => "bugs",
#     typename => "distribution",
#   };
#   $a->{propertydata}{properties}{type}{omit_norms} = \${$a->{propertydata}{properties}{source}{omit_norms}};
#   $a;
# }
has 'bugs'                         => (
    'dynamic'                      => '1',
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     index => "not_analyzed",
#     index_options => "docs",
#     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#     store => "yes",
#     type => "string",
#   },
#   propertyname => "name",
#   typename => "distribution",
# }
has 'name'                         => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

