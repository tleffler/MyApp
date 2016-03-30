# vim: set filetype=perl

on 'configure' => sub {
};

on 'build' => sub {
  requires 'inc::Module::Install';
  requires 'Module::Install::Catalyst';
};

on 'test' => sub {
  requires 'Catalyst::Test';    # part of Catalyst::Runtime dist
  requires 'Test::Pod',           '>= 1.14';
  requires 'Test::Pod::Coverage', '>= 1.04';
  requires 'Test::More',          '>= 0.88';
};

on 'runtime' => sub {

  # default Catalyst dependencies, per Makefile.PL
  requires 'Catalyst::Runtime', '>= 5.90103';
  requires 'Catalyst::Plugin::ConfigLoader';
  requires 'Catalyst::Plugin::Static::Simple';
  requires 'Catalyst::Action::RenderView';
  requires 'Moose';
  requires 'namespace::autoclean';
  requires 'Config::General';

  # application dependencies

  # non-webapp script dependencies

  # deployment dependencies
};

on 'develop' => sub {
  requires 'Catalyst::Devel';
};
