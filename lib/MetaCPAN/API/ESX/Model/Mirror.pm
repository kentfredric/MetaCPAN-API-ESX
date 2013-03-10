package MetaCPAN::API::ESX::Model::Mirror;
BEGIN {
  $MetaCPAN::API::ESX::Model::Mirror::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Mirror::VERSION = '0.1.0';
}
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for mirror

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
#   propertyname => "A_or_CNAME",
#   typename => "mirror",
# }
has 'A_or_CNAME'                   => (
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
#   propertyname => "aka_name",
#   typename => "mirror",
# }
has 'aka_name'                     => (
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
#   propertyname => "ccode",
#   typename => "mirror",
# }
has 'ccode'                        => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed => {
#                   analyzer => "standard",
#                   include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#                 city => {
#                   index => "not_analyzed",
#                   index_options => "docs",
#                   omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "city",
#   typename => "mirror",
# }
has 'city'                         => (
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
#   propertyname => "contact",
#   typename => "mirror",
# }
has 'contact'                      => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed  => {
#                                analyzer => "standard",
#                                include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                                store => "yes",
#                                type => "string",
#                              },
#                 continent => {
#                                index => "not_analyzed",
#                                index_options => "docs",
#                                omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                store => "yes",
#                                type => "string",
#                              },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "continent",
#   typename => "mirror",
# }
has 'continent'                    => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed => {
#                               analyzer => "standard",
#                               include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#                 country  => {
#                               index => "not_analyzed",
#                               index_options => "docs",
#                               omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "country",
#   typename => "mirror",
# }
has 'country'                      => (
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
#   propertyname => "dnsrr",
#   typename => "mirror",
# }
has 'dnsrr'                        => (
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
#   propertyname => "freq",
#   typename => "mirror",
# }
has 'freq'                         => (
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
#   propertyname => "ftp",
#   typename => "mirror",
# }
has 'ftp'                          => (
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
#   propertyname => "http",
#   typename => "mirror",
# }
has 'http'                         => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => { format => "dateOptionalTime", store => "yes", type => "date" },
#   propertyname => "inceptdate",
#   typename => "mirror",
# }
has 'inceptdate'                   => (
    'is'                           => 'rw',
    'store'                        => 'yes',
);
# {
#   index => "cpan_v1",
#   propertydata => { type => "geo_point" },
#   propertyname => "location",
#   typename => "mirror",
# }
has 'location'                     => (
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
#   typename => "mirror",
# }
has 'name'                         => (
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
#   propertyname => "note",
#   typename => "mirror",
# }
has 'note'                         => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed => {
#                   analyzer => "standard",
#                   include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#                 org => {
#                   index => "not_analyzed",
#                   index_options => "docs",
#                   omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                   store => "yes",
#                   type => "string",
#                 },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "org",
#   typename => "mirror",
# }
has 'org'                          => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed => {
#                               analyzer => "standard",
#                               include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#                 region   => {
#                               index => "not_analyzed",
#                               index_options => "docs",
#                               omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "region",
#   typename => "mirror",
# }
has 'region'                       => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => { format => "dateOptionalTime", store => "yes", type => "date" },
#   propertyname => "reitredate",
#   typename => "mirror",
# }
has 'reitredate'                   => (
    'is'                           => 'rw',
    'store'                        => 'yes',
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
#   propertyname => "rsync",
#   typename => "mirror",
# }
has 'rsync'                        => (
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
#   propertyname => "src",
#   typename => "mirror",
# }
has 'src'                          => (
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
#   propertyname => "tz",
#   typename => "mirror",
# }
has 'tz'                           => (
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

MetaCPAN::API::ESX::Model::Mirror - Generated model for mirror

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
