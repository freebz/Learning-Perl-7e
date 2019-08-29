# Subroutine Signatures

sub max {
    my($m, $n);
    ($m, $n) = @_;
    if ($m > $n) { $m } else { $n }
}


use v5.20;
use feature qw(signatures);
no warnings qw(experimental::signatures);


sub max ( $m, $n ) {
    if ($m > $n) { $m } else { $n }
}


&max( 137, 48, 7 );


# Too many arguments for subroutine


sub max ( $max_so_far, @rest ) {
    foreach (@rest) {
	if ($_ > $max_so_far) {
	    $max_so_far = $_;
	}
    }
    $max_so_far;
}


sub max ( $max_so_far, @ ) {
    foreach (@_) {
	if ($_ > $max_so_far) {
	    $max_so_far = $_;
	}
    }
    $max_so_far;
}


sub list_from_fred_to_barney ( $fred = 0, $barney = 7 ) {
    if ($fred < $barney) { $fred..$barney }
    else                 { reverse $barney..$fred }
}


my @defaults    = list_from_fred_to_barney();
my @default_end = list_from_fred_to_barney( 17 );

say "defaults: @defaults";
say "default_end: @default_end";


# defaults: 0 1 2 3 4 5 6 7
# default_end: 17 16 15 14 13 12 11 10 9 8 7


sub one_or_two_args ( $first, $= ) { ... }


sub PI () { 3.1415926 }
