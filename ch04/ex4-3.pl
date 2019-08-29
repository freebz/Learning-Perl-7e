# Return Values

sub sum_of_fred_and_barney {
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney;  # That's the return value
}


$fred   = 3;
$barney = 4;
$wilma  = &sum_of_fred_and_barney;      # $wilma gets 7
print "\$wilma is $wilma.\n";

$betty  = 3 * &sum_of_fred_and_barney;  # $betty gets 21
print "\$betty is $betty.\n";


# Hey, you called the sum_of_fred_and_barney subroutine!
# $wilma is 7.
# Hey, you called the sum_of_fred_and_barney subroutine!
# $betty is 21.


sub sum_of_fred_and_barney {
    print "Hey, you called the sum_of_fred_and_barney subroutine!\n";
    $fred + $barney;  # That's not really the return value!
    print "Hey, I'm returning a value now!\n";      # Oops!
}


sub larger_of_fred_or_barney {
    if ($fred > $barney) {
	$fred;
    } else {
	$barney;
    }
}
