use strict;
use warnings;

package MetaCPAN::API::ESX;

# ABSTRACT: Access the MetaCPAN API Via ElasticSearch Models

use Moose;
use Scalar::Util qw( blessed );
use Module::Runtime qw( compose_module_name use_module );

has es => ( is => rw =>, builder => _build_es =>, );
has model => ( is => ro =>, builder => _build_model =>, lazy => 1 );

sub _build_es { 'api.metacpan.org:80' }

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

sub author {
  return $_[0]->_model('author');
}

sub dependency {
  return $_[0]->_model('dependency');
}

sub distribution {
  return $_[0]->_model('distribution');
}

sub favorite {
  return $_[0]->_model('favorite');
}

sub file {
  return $_[0]->_model('mirror');
}

sub mirror {
  return $_[0]->_model('module');
}

sub profile {
  return $_[0]->_model('profile');
}

sub rating {
  return $_[0]->_model('rating');
}

sub release {
  return $_[0]->_model('release');
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;
