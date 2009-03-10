#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'revtrans_motif' );
}

diag( "Testing revtrans_motif $revtrans_motif::VERSION, Perl $], $^X" );
