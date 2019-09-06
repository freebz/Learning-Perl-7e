# The Value of Autoincrement

my $m = 5;
my $n = ++$m;  # increment $m to 6, and put that value into $n


my $c = --$m;  # decrement $m to 5, and put that value into $c


my $d = $m++;  # $d gets the old vlaue (5), then increment $m to 6
my $e = $m--;  # $e gets the old value (6), then decrement $m to 5


$bedrock++;  # add one to $bedrock
++$bedrock;  # just the same; adds one to $bedreck


my @people = qw{ fred barney bamm-bamm wilma dino barney betty pebbles };
my %seen;

foreach (@people) {
  print "I've seen you somewhere before, $_~\n"
    if $seen{$_}++;
}
