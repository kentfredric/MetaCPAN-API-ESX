package MetaCPAN::API::ESX::Model::Profile;
BEGIN {
  $MetaCPAN::API::ESX::Model::Profile::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Profile::VERSION = '0.1.0';
}
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for profile

use Moose;
use ElasticSearchX::Model::Document;

# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed => {
#                   analyzer => "simple",
#                   include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#                 id => {
#                   index => "not_analyzed",
#                   index_options => "docs",
#                   omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "id",
#   typename => "profile",
# }
has 'id'                           => (
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
#   typename => "profile",
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

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX::Model::Profile - Generated model for profile

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
