use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my $module = 'Caller.pm';
WriteMakefile(
              'NAME'         => 'Devel::Caller',
              'VERSION_FROM' => $module,
              'PREREQ_PM'    => { 'Test::More' => 0,
                                  'PadWalker'  => 0.08 },
             );


sub MY::postamble {
    return <<EOF
README: $module
\tpod2text $module > README

gcov:
\trm -f `basename \$(XS_FILES)`.{bb,bbg,da,o}
\t\$(MAKE) test CCFLAGS="\$(CCFLAGS) -O0 -fprofile-arcs -ftest-coverage"
\tgcov \$(XS_FILES)
EOF
}
