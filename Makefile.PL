
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Catalyst integration for HTML::FormFu",
  "AUTHOR" => "Carl Franks <cpan\@fireartist.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Catalyst-Controller-HTML-FormFu",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Catalyst::Controller::HTML::FormFu",
  "PREREQ_PM" => {
    "Catalyst::Component::InstancePerContext" => 0,
    "Catalyst::Runtime" => "5.71001",
    "Config::Any" => 0,
    "File::Spec" => 0,
    "HTML::FormFu" => "1.00",
    "Moose" => "1.00",
    "MooseX::Attribute::Chained" => "v1.0.1",
    "Regexp::Assemble" => 0,
    "Scalar::Util" => 0,
    "Task::Weaken" => 0,
    "namespace::autoclean" => 0
  },
  "TEST_REQUIRES" => {
    "Catalyst::Action::RenderView" => 0,
    "Catalyst::Plugin::Session" => 0,
    "Catalyst::Plugin::Session::State::Cookie" => 0,
    "Catalyst::Plugin::Session::Store::File" => 0,
    "Catalyst::View::TT" => 0,
    "Template" => 0,
    "Test::Aggregate::Nested" => "0.371",
    "Test::More" => "0.92",
    "Test::WWW::Mechanize" => "1.16",
    "Test::WWW::Mechanize::Catalyst" => 0
  },
  "VERSION" => "1.00",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Catalyst::Action::RenderView" => 0,
  "Catalyst::Component::InstancePerContext" => 0,
  "Catalyst::Plugin::Session" => 0,
  "Catalyst::Plugin::Session::State::Cookie" => 0,
  "Catalyst::Plugin::Session::Store::File" => 0,
  "Catalyst::Runtime" => "5.71001",
  "Catalyst::View::TT" => 0,
  "Config::Any" => 0,
  "File::Spec" => 0,
  "HTML::FormFu" => "1.00",
  "Moose" => "1.00",
  "MooseX::Attribute::Chained" => "v1.0.1",
  "Regexp::Assemble" => 0,
  "Scalar::Util" => 0,
  "Task::Weaken" => 0,
  "Template" => 0,
  "Test::Aggregate::Nested" => "0.371",
  "Test::More" => "0.92",
  "Test::WWW::Mechanize" => "1.16",
  "Test::WWW::Mechanize::Catalyst" => 0,
  "namespace::autoclean" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



