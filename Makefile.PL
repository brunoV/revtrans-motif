use inc::Module::Install;

name     'revtrans-motif';
all_from 'bin/revtrans-motif';
author   'Bruno Vecchi <vecchi.b@gmail.com>';
license  'perl';

build_requires 'Test::More';
requires 'List::MoreUtils';
requires 'Bio::Tools::CodonTable';
requires 'Bio::Seq';
requires 'Pod::Usage';
requires 'Getopt::Long';
requires 'Sub::Exporter';

install_script 'bin/revtrans-motif';

auto_install;

WriteAll;
