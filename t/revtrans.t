#!/usr/bin/perl
use strict;
use warnings;
use Test::More qw(no_plan);
use Test::Exception;
use Revtrans;

can_ok('Revtrans', 'reverse_translate_motif');
my @data;

while (<DATA>) {
   chomp;
   push @data, [ split ' ', $_ ];
}

foreach my $line (@data) {
   if ($line->[1]) {
      is(reverse_translate_motif($line->[0]) , $line->[1]);
   }
   else {
      throws_ok {reverse_translate_motif($line->[0])} qr/syntax token/;
   }
}

__DATA__
MAEELKAVAP ATGGCNGARGARYTNAARGCNGTNGCNCCN
LKGHB[WhYq]Q YTNAARGGNCAYRAYYRNCAR
(LK){2,3}[^GHB][WHYQ]Q (YTNAAR){2,3}HBNYRNCAR
LK[^GHB][WHYQ]Q YTNAARHBNYRNCAR
(LK){2,3}[^GHB][WHYQ]QX.X (YTNAAR){2,3}HBNYRNCARNNNNNNNNN
/&%/&%(/)(/%
