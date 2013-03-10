#!/usr/bin/env perl 

use strict;
use warnings;
use utf8;
use Path::Tiny qw( path );
use FindBin;

use ElasticSearchX::Model::Generator qw( generate_model );

my $project = path($FindBin::Bin)->parent;

my $instance = generate_model(
  mapping_url          => 'http://api.metacpan.org:80/v0/_mapping',
  generated_base_class => 'MetaCPAN::API::ESX::Model',
  base_dir             => $project->child('lib'),
);
for my $document ( $instance->documents ) {
  $document->write();
}
