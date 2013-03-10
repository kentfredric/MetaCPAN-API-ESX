package MetaCPAN::API::ESX::Model::Favorite;
BEGIN {
  $MetaCPAN::API::ESX::Model::Favorite::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Favorite::VERSION = '0.001000';
}
use strict;
use warnings FATAL => 'all';
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
#   propertyname => "author",
#   typename => "favorite",
# }
has "author" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
);

# {
#   index => "cpan_v1",
#   propertydata => { format => "dateOptionalTime", store => "yes", type => "date" },
#   propertyname => "date",
#   typename => "favorite",
# }
has "date" => (
  "is"    => "rw",
  "store" => "yes",
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
#   propertyname => "distribution",
#   typename => "favorite",
# }
has "distribution" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
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
#   propertyname => "id",
#   typename => "favorite",
# }
has "id" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
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
#   propertyname => "release",
#   typename => "favorite",
# }
has "release" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
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
#   propertyname => "user",
#   typename => "favorite",
# }
has "user" => (
  "index" => "not_analyzed",
  "is"    => "rw",
  "store" => "yes",
  "type"  => "string",
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX::Model::Favorite

=head1 VERSION

version 0.001000

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
