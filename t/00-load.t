#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Revtrans' );
}

diag( "Testing Revtrans $revtrans_motif::VERSION, Perl $], $^X" );
