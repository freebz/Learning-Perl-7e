# Autoincrement and Autodecrement

my $bedrock = 42;
$bedrock++;  # add one to $bedrock; it's now 43


my @people = qw{ fred barney fred wilma dino barney fred pebbles };
my %count;		       # new empty hash
$count{$_}++ foreach @people;  # creates new keys and vlaues as needed


$bedrock--;  # subtract one from $bedrock; it's 42 again
