
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "ElasticSearch" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.4003",
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.4003"
  },
  "dist_abstract" => "Access the MetaCPAN API Via ElasticSearch Models",
  "dist_author" => [
    "Kent Fredric <kentfredric\@gmail.com>"
  ],
  "dist_name" => "MetaCPAN-API-ESX",
  "dist_version" => "0.001000",
  "license" => "perl",
  "module_name" => "MetaCPAN::API::ESX",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "ElasticSearchX::Model" => 0,
    "ElasticSearchX::Model::Document" => 0,
    "Module::Runtime" => 0,
    "Moose" => 0,
    "Scalar::Util" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
