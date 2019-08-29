# Persistent, Private Variables

sub marine {
    $n += 1;  # Global variable $n
    print "Hello, sailor number $n!\n";
}


use v5.10;

sub marine {
    state $n = 0;  # private, persistent variable $n
    $n += 1;
    print "Hello, sailor number $n!\n";
}


use v5.10;

running_sum( 5, 6 );
running_sum( 1..3 );
running_sum( 4 );

sub running_sum {
    state $sum = 0;
    state @numbers;

    foreach my $number ( @_ ) {
	push @numbers, $number;
	$sum += $number;
    }

    say "The sum of (@numbers) is $sum";
}


# The sum of (5 6) is 11
# The sum of (5 6 1 2 3) is 17
# The sum of (5 6 1 2 3 4) is 21


state @array = qw(a b c); # Error!
# Initialization of state variables in list context currently forbidden ...
