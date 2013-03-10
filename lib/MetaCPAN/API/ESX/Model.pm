
use strict;
use warnings;

package MetaCPAN::API::ESX::Model;
BEGIN {
  $MetaCPAN::API::ESX::Model::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::Model::VERSION = '0.1.0';
}
use Moose;
use ElasticSearchX::Model;

index v0 => ( namespace => 'MetaCPAN::API::ESX::Model', );

__PACKAGE__->meta->make_immutable;

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX::Model

=head1 VERSION

version 0.1.0

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
