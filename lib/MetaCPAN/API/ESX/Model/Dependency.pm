package MetaCPAN::API::ESX::Model::Dependency;
BEGIN {
  $MetaCPAN::API::ESX::Model::Dependency::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Dependency::VERSION = '0.001000';
}
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for dependency

use Moose;
use ElasticSearchX::Model::Document;

# {
#   index => "cpan_v1",
#   propertydata => {
#     index => "not_analyzed",
#     index_options => "docs",
#     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#     store => "yes",
#     type => "string",
#   },
#   propertyname => "module",
#   typename => "dependency",
# }
has 'module'                       => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
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
#   propertyname => "phase",
#   typename => "dependency",
# }
has 'phase'                        => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
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
#   propertyname => "relationship",
#   typename => "dependency",
# }
has 'relationship'                 => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
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
#   propertyname => "version",
#   typename => "dependency",
# }
has 'version'                      => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "float" },
#   propertyname => "version_numified",
#   typename => "dependency",
# }
has 'version_numified'             => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'float',
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX::Model::Dependency - Generated model for dependency

=head1 VERSION

version 0.001000

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
