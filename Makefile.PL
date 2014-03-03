use ExtUtils::MakeMaker;

WriteMakefile(
  ABSTRACT => "Delimited Text Processing",
  AUTHOR   => 'Phil Pollard <bennie@cpan.org>',
  LICENSE  => 'artistic_2',
  NAME     => 'Text::Delimited',
  VERSION  => '2.08',

  PREREQ_PM => {
          'Test::Simple' => '0'
        },

  ( $ExtUtils::MakeMaker::VERSION < 6.46
        ? ()
        : ( META_MERGE => {
                'meta-spec' => { version => 2 },
                no_index => {directory => [qw/t/]},
                provides => {
                     'Text::Delimited' => {
                          file    => 'lib/Text/Delimited.pm',
                          version => '2.08'
                     }
                },
                requires  => {perl => '5.006'},
                resources => {
                    repository => {
                        type => 'git',
                        url  => 'git://github.com/bennie/perl-Text-Delimited.git',
                        web  => 'http://github.com/bennie/perl-Text-Delimited',
                    },
                    bugtracker => {
                        web => 'https://rt.cpan.org/Dist/Display.html?Name=Text-Delimited',
                    },

                },
            },
        )
    )

);