use strict;
use warnings;

package MetaCPAN::API::ESX;
BEGIN {
  $MetaCPAN::API::ESX::AUTHORITY = 'cpan:KENTNL';
}
{
  $MetaCPAN::API::ESX::VERSION = '0.1.0';
}

# ABSTRACT: Access the MetaCPAN API Via ElasticSearch Models


use Moose;
use Scalar::Util qw( blessed );
use Module::Runtime qw( compose_module_name use_module );

has es           => ( is => rw =>, builder => _build_es           =>, );
has es_server    => ( is => ro =>, builder => _build_es_server    =>, lazy => 1, );
has es_transport => ( is => ro =>, builder => _build_es_transport =>, lazy => 1, );
has model        => ( is => ro =>, builder => _build_model        =>, lazy => 1, );

sub _build_es_server    { 'api.metacpan.org:80' }
sub _build_es_transport { 'httptiny' }

sub _build_es {
  my $self = shift;
  return {
    servers    => $self->es_server,
    transport  => $self->es_transport,
    no_refresh => 1,
  };
}

sub _build_model {
  my ( $self, ) = @_;
  require MetaCPAN::API::ESX::Model;
  return MetaCPAN::API::ESX::Model->new( es => $self->es );
}

sub _model {
  my ( $self, $subname ) = @_;
  return $self->model->index('v0')->type($subname);
}

sub _build_base_class {
  my ($self) = @_;
  return $self if not ref $self;
  return blessed($self);
}

sub author       { return $_[0]->_model('author') }
sub dependency   { return $_[0]->_model('dependency') }
sub distribution { return $_[0]->_model('distribution') }
sub favorite     { return $_[0]->_model('favorite') }
sub file         { return $_[0]->_model('mirror') }
sub mirror       { return $_[0]->_model('module') }
sub profile      { return $_[0]->_model('profile') }
sub rating       { return $_[0]->_model('rating') }
sub release      { return $_[0]->_model('release') }

__PACKAGE__->meta->make_immutable;
no Moose;

1;

__END__

=pod

=encoding utf-8

=head1 NAME

MetaCPAN::API::ESX - Access the MetaCPAN API Via ElasticSearch Models

=head1 VERSION

version 0.1.0

=head1 SYNOPSIS

    my $es = MetaCPAN::API::ESX->new();

    my $iterator = $es->author->filter({
        or => [
            { term => { country => 'NZ' }},
            { term => { country => 'AU' }},
        ]
    })->size(500)->scroll(5m);

    while( my $author = $iterator->next ){
        printf "%4s: %20s => %-40s ( %s )\n",
            $result->country,
            $result->pauseid,
            $result->name,
            join q{,}, grep { defined } $result->city, $result->region;
    }

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
