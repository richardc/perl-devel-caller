#!perl
use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'         => 'Devel::Caller',
    'VERSION_FROM' => 'lib/Devel/Caller.pm',
    'PREREQ_PM'    => {
        'Test::More' => 0,
        'PadWalker'  => '0.08'
    }
);
