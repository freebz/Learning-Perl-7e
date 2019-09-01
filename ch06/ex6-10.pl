# Hash Element Interpolation

foreach $person (sort keys %books) {                    # each patron, in order
    if ($books{$person}) {
	print "$person has $books{$person} items\n";    # fred has 3 items
    }
}
