
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::ApacheTest',
                       'DISTNAME' => 'Dist-Zilla-Plugin-ApacheTest',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Module::Signature' => '0',
                                             'Test::More' => '0',
                                             'Socket' => '0'
                                           },
                       'ABSTRACT' => 'build a Makefile.PL that uses ExtUtils::MakeMaker with Apache::Test',
                       'EXE_FILES' => [],
                       'VERSION' => '0.01',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::TextTemplate' => '0',
                                        'Dist::Zilla::Role::PrereqSource' => '0',
                                        'namespace::autoclean' => '0',
                                        'Data::Dumper' => '0',
                                        'Dist::Zilla::Role::BuildRunner' => '0',
                                        'Dist::Zilla::File::InMemory' => '0',
                                        'Dist::Zilla::Role::TestRunner' => '0',
                                        'Moose::Autobox' => '0',
                                        'Dist::Zilla::Role::InstallTool' => '0',
                                        'List::MoreUtils' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



