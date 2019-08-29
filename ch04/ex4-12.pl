# Omitting the Ampersand

my @cards = shuffle(@deck_of_cards);  # No & necessary on &shuffle


sub division {
    $_[0] / $_[1];		   # Divide first param by second
}

my $quotient = division 355, 113;  # Uses &division


sub chomp {
    print "Munch, munch!\n";
}

&chomp;  # That ampersand is not optional!
