use strict;
use Module::Build;

Module::Build->new(
    module_name => "Devel::Caller",
    license     => 'perl',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'PadWalker' => '0.08',
    },
    create_makefile_pl => 'passthrough',
   )
  ->create_build_script;
