package MetaCPAN::API::ESX::Model::File;
BEGIN {
  $MetaCPAN::API::ESX::Model::File::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::File::VERSION = '0.001000';
}
use strict;
use warnings FATAL => 'all';

# ABSTRACT: Generated model for file

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
#   typename => "file",
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
#   propertyname => "author",
#   typename => "file",
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
#   typename => "file",
# }
has 'authorized'                   => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "binary",
#   typename => "file",
# }
has 'binary'                       => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
);
# {
#   index => "cpan_v1",
#   propertydata => { format => "dateOptionalTime", store => "yes", type => "date" },
#   propertyname => "date",
#   typename => "file",
# }
has 'date'                         => (
    'is'                           => 'rw',
    'store'                        => 'yes',
);
# {
#   index => "cpan_v1",
#   propertydata => {
#     fields => {
#                 analyzed    => {
#                                  analyzer => "standard",
#                                  include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                                  store => "yes",
#                                  type => "string",
#                                },
#                 description => {
#                                  index => "not_analyzed",
#                                  index_options => "docs",
#                                  omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                  store => "yes",
#                                  type => "string",
#                                },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "description",
#   typename => "file",
# }
has 'description'                  => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "directory",
#   typename => "file",
# }
has 'directory'                    => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
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
#     typename => "file",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has 'distribution'                 => (
    'is'                           => 'rw',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       fields => {
#                   analyzed      => {
#                                      analyzer => "standard",
#                                      include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                                      store => "yes",
#                                      type => "string",
#                                    },
#                   camelcase     => {
#                                      analyzer => "camelcase",
#                                      include_in_all => 'fix',
#                                      store => "yes",
#                                      type => "string",
#                                    },
#                   documentation => {
#                                      index => "not_analyzed",
#                                      index_options => "docs",
#                                      omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                      store => "yes",
#                                      type => "string",
#                                    },
#                   lowercase     => {
#                                      analyzer => "lowercase",
#                                      include_in_all => 'fix',
#                                      store => "yes",
#                                      type => "string",
#                                    },
#                 },
#       type   => "multi_field",
#     },
#     propertyname => "documentation",
#     typename => "file",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has 'documentation'                => (
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
#   propertyname => "id",
#   typename => "file",
# }
has 'id'                           => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "boolean" },
#   propertyname => "indexed",
#   typename => "file",
# }
has 'indexed'                      => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'boolean',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "integer" },
#   propertyname => "level",
#   typename => "file",
# }
has 'level'                        => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'integer',
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
#   typename => "file",
# }
has 'maturity'                     => (
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
#   propertyname => "mime",
#   typename => "file",
# }
has 'mime'                         => (
    'index'                        => 'not_analyzed',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       dynamic => "false",
#       include_in_root => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#       properties => {
#         associated_pod => { store => "yes", type => "string" },
#         authorized => { store => "yes", type => "boolean" },
#         indexed => { store => "yes", type => "boolean" },
#         name => {
#           fields => {
#                       analyzed => {
#                         analyzer => "standard",
#                         include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                         store => "yes",
#                         type => "string",
#                       },
#                       camelcase => {
#                         analyzer => "camelcase",
#                         include_in_all => 'fix',
#                         store => "yes",
#                         type => "string",
#                       },
#                       lowercase => {
#                         analyzer => "lowercase",
#                         include_in_all => 'fix',
#                         store => "yes",
#                         type => "string",
#                       },
#                       name => {
#                         index => "not_analyzed",
#                         index_options => "docs",
#                         omit_norms => 'fix',
#                         store => "yes",
#                         type => "string",
#                       },
#                     },
#           type   => "multi_field",
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
#     propertyname => "module",
#     typename => "file",
#   };
#   $a->{propertydata}{properties}{name}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{properties}{name}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{properties}{name}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{properties}{name}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{properties}{name}{fields}{name}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a->{propertydata}{properties}{version}{omit_norms} = \${$a->{propertydata}{include_in_root}};
#   $a;
# }
has 'module'                       => (
    'dynamic'                      => undef,
    'include_in_root'              => '1',
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
#   typename => "file",
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
#   propertyname => "path",
#   typename => "file",
# }
has 'path'                         => (
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
#                   term_vector => "with_positions_offsets",
#                   type => "string",
#                 },
#               },
#     type   => "multi_field",
#   },
#   propertyname => "pod",
#   typename => "file",
# }
has 'pod'                          => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => { index => "no", store => "yes", type => "string" },
#   propertyname => "pod_lines",
#   typename => "file",
# }
has 'pod_lines'                    => (
    'index'                        => 'no',
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'string',
);
# do {
#   my $a = {
#     index => "cpan_v1",
#     propertydata => {
#       fields => {
#                   analyzed  => {
#                                  analyzer => "standard",
#                                  include_in_all => bless(do{\(my $o = 0)}, "JSON::XS::Boolean"),
#                                  store => "yes",
#                                  type => "string",
#                                },
#                   camelcase => {
#                                  analyzer => "camelcase",
#                                  include_in_all => 'fix',
#                                  store => "yes",
#                                  type => "string",
#                                },
#                   lowercase => {
#                                  analyzer => "lowercase",
#                                  include_in_all => 'fix',
#                                  store => "yes",
#                                  type => "string",
#                                },
#                   release   => {
#                                  index => "not_analyzed",
#                                  index_options => "docs",
#                                  omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#                                  store => "yes",
#                                  type => "string",
#                                },
#                 },
#       type   => "multi_field",
#     },
#     propertyname => "release",
#     typename => "file",
#   };
#   $a->{propertydata}{fields}{camelcase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a->{propertydata}{fields}{lowercase}{include_in_all} = \${$a->{propertydata}{fields}{analyzed}{include_in_all}};
#   $a;
# }
has 'release'                      => (
    'is'                           => 'rw',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "integer" },
#   propertyname => "sloc",
#   typename => "file",
# }
has 'sloc'                         => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'integer',
);
# {
#   index => "cpan_v1",
#   propertydata => { store => "yes", type => "integer" },
#   propertyname => "slop",
#   typename => "file",
# }
has 'slop'                         => (
    'is'                           => 'rw',
    'store'                        => 'yes',
    'type'                         => 'integer',
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
#   typename => "file",
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
#   typename => "file",
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
#     index => "not_analyzed",
#     index_options => "docs",
#     omit_norms => bless(do{\(my $o = 1)}, "JSON::XS::Boolean"),
#     store => "yes",
#     type => "string",
#   },
#   propertyname => "version",
#   typename => "file",
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
#   typename => "file",
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

MetaCPAN::API::ESX::Model::File - Generated model for file

=head1 VERSION

version 0.001000

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
