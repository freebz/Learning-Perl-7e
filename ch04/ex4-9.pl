# Notes on Lexical (my) Variables

foreach (1..10) {
    my($square) = $_ * $_;  # private variable in this loop
    print "$_ squared is $square.\n";
}


my($num) = @_;  # list context, same as ($num) = @_;
my $num  = @_;  # scalar context, same as $num = @_;


my $fred, $barney;     # WRONG! Fails to declare $barney
my($fred, $barney);    # declares both


my @phone_number;


foreach my $rock (qw/ bedrock slate lava /) {
  print "One rock is $rock.\n";  # Prints names of three rocks
}
