# Hash Functions

# The keys and values Function

my %hash = ('a' => 1, 'b' => 2, 'c' => 3);
my @k = keys %hash;
my @v = values %hash;


my $count = keys %hash;  # gets 3, meaning three key-value pairs


if (%hash) {
    print "That was a true value!\n";
}
