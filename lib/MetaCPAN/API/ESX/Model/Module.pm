package MetaCPAN::API::ESX::Model::Module;
BEGIN {
  $MetaCPAN::API::ESX::Model::Module::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Module::VERSION = '0.1.0';
}
use strict;
use warnings FATAL => 'all';
use Moose;
use ElasticSearchX::Model::Document;

# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "string" },
#   propertyname => "associated_pod",
#   typename => "module",
# }
has "associated_pod" => (
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
);

# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "authorized",
#   typename => "module",
# }
has "authorized" => (
  "is"    => "rw",
  "store" => "yes",
  "type"  => "boolean",
);

# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "indexed",
#   typename => "module",
# }
has "indexed" => (
  "is"    => "rw",
  "store" => "yes",
  "type"  => "boolean",
);

# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       fields => {
#                   analyzed => {
#                     analyzer => "standard",
#                     include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                     store => "yes",
#                     type => "string",
#                   },
#                   camelcase => {
#                     analyzer => "camelcase",
#                     include_in_all => 'fix',
#                     store => "yes",
#                     type => "string",
#                   },
#                   lowercase => {
#                     analyzer => "lowercase",
#                     include_in_all => 'fix',
#                     store => "yes",
#                     type => "string",
#                   },
#                   name => {
#                     index => "not_analyzed",
#                     index_options => "docs",
#                     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                     store => "yes",
#                     type => "string",
#                   },
#                 },
#       type   => "multi_field",
#     },
#     propertyname => "name",
#     typename => "module",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has "name" => ( "is" => "rw", );

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
#   typename => "module",
# }
has "version" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
);

# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "float" },
#   propertyname => "version_numified",
#   typename => "module",
# }
has "version_numified" => (
  "is"    => "rw",
  "store" => "yes",
  "type"  => "float",
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX::Model::Module

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
