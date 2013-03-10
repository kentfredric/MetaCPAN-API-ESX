package MetaCPAN::API::ESX::Model::Release;
BEGIN {
  $MetaCPAN::API::ESX::Model::Release::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::Release::VERSION = '0.1.0';
}
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for release

use Moose;
use ElasticSearchX::Model::Document;

# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 abstract => {
#                               index => "not_analyzed",
#                               index_options => "docs",
#                               omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#                 analyzed => {
#                               analyzer => "standard",
#                               include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                               store => "yes",
#                               type => "string",
#                             },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "abstract",
#   typename => "release",
# }
has 'abstract'                     => (
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
#   propertyname => "archive",
#   typename => "release",
# }
has 'archive'                      => (
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
#   propertyname => "author",
#   typename => "release",
# }
has 'author'                       => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "authorized",
#   typename => "release",
# }
has 'authorized'                   => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
);
# {
#   index => "cpan_v1",
#   propertydata => { format => "dateOptionalTime", store => "yes", type => "date" },
#   propertyname => "date",
#   typename => "release",
# }
has 'date'                         => (
    'is'                           => 'rw',
    'store'                        => 'yes',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       dynamic => "false",
#       include_in_root => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#       properties => {
#         module => {
#           index => "not_analyzed",
#           index_options => "docs",
#           omit_norms => 'fix',
#           store => "yes",
#           type => "string",
#         },
#         phase => {
#           index => "not_analyzed",
#           index_options => "docs",
#           omit_norms => 'fix',
#           store => "yes",
#           type => "string",
#         },
#         relationship => {
#           index => "not_analyzed",
#           index_options => "docs",
#           omit_norms => 'fix',
#           store => "yes",
#           type => "string",
#         },
#         version => {
#           index => "not_analyzed",
#           index_options => "docs",
#           omit_norms => 'fix',
#           store => "yes",
#           type => "string",
#         },
#         version_numified => { store => "yes", type => "float" },
#       },
#       type => "nested",
#     },
#     propertyname => "dependency",
#     typename => "release",
#   };
#   $a->{propertydata}{properties}{module}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{phase}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{relationship}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{version}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a;
# }
has 'dependency'                   => (
    'dynamic'                      => undef,
    'include_in_root'              => '1',
    'is'                           => 'rw',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       fields => {
#                   analyzed     => {
#                                     analyzer => "standard",
#                                     include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                   camelcase    => {
#                                     analyzer => "camelcase",
#                                     include_in_all => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                   distribution => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                   lowercase    => {
#                                     analyzer => "lowercase",
#                                     include_in_all => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                 },
#       type   => "multi_field",
#     },
#     propertyname => "distribution",
#     typename => "release",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has 'distribution'                 => (
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
#   propertyname => "download_url",
#   typename => "release",
# }
has 'download_url'                 => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "first",
#   typename => "release",
# }
has 'first'                        => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
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
#   typename => "release",
# }
has 'id'                           => (
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
#   propertyname => "license",
#   typename => "release",
# }
has 'license'                      => (
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
#   propertyname => "maturity",
#   typename => "release",
# }
has 'maturity'                     => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
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
#     typename => "release",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has 'name'                         => (
    'is'                           => 'rw',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       dynamic => "true",
#       include_in_root => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#       properties => {
#         bugtracker => {
#                         dynamic => "true",
#                         include_in_root => 'fix',
#                         properties => {
#                           mailto => {
#                             index => "not_analyzed",
#                             index_options => "docs",
#                             omit_norms => 'fix',
#                             store => "yes",
#                             type => "string",
#                           },
#                           web => {
#                             index => "not_analyzed",
#                             index_options => "docs",
#                             omit_norms => 'fix',
#                             store => "yes",
#                             type => "string",
#                           },
#                           x_url => { type => "string" },
#                         },
#                         type => "nested",
#                       },
#         homepage   => {
#                         index => "not_analyzed",
#                         index_options => "docs",
#                         omit_norms => 'fix',
#                         store => "yes",
#                         type => "string",
#                       },
#         license    => {
#                         index => "not_analyzed",
#                         index_options => "docs",
#                         omit_norms => 'fix',
#                         store => "yes",
#                         type => "string",
#                       },
#         repository => {
#                         dynamic => "true",
#                         include_in_root => 'fix',
#                         properties => {
#                           type => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                           url  => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                           web  => {
#                                     index => "not_analyzed",
#                                     index_options => "docs",
#                                     omit_norms => 'fix',
#                                     store => "yes",
#                                     type => "string",
#                                   },
#                         },
#                         type => "nested",
#                       },
#       },
#       type => "nested",
#     },
#     propertyname => "resources",
#     typename => "release",
#   };
#   $a->{propertydata}{properties}{bugtracker}{include_in_root} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{bugtracker}{properties}{mailto}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{bugtracker}{properties}{web}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{homepage}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{license}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{repository}{include_in_root} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{repository}{properties}{type}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{repository}{properties}{url}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{repository}{properties}{web}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a;
# }
has 'resources'                    => (
    'dynamic'                      => '1',
    'include_in_root'              => '1',
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     dynamic    => "true",
#     properties => {
#                     gid   => { store => "yes", type => "integer" },
#                     mode  => { store => "yes", type => "integer" },
#                     mtime => { store => "yes", type => "integer" },
#                     size  => { store => "yes", type => "integer" },
#                     uid   => { store => "yes", type => "integer" },
#                   },
#   },
#   propertyname => "stat",
#   typename => "release",
# }
has 'stat'                         => (
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
#   propertyname => "status",
#   typename => "release",
# }
has 'status'                       => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     dynamic    => "true",
#     properties => {
#                     fail => { store => "yes", type => "integer" },
#                     na => { store => "yes", type => "integer" },
#                     pass => { store => "yes", type => "integer" },
#                     unknown => { store => "yes", type => "integer" },
#                   },
#   },
#   propertyname => "tests",
#   typename => "release",
# }
has 'tests'                        => (
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
#   propertyname => "version",
#   typename => "release",
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
#   typename => "release",
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

MetaCPAN::API::ESX::Model::Release - Generated model for release

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
