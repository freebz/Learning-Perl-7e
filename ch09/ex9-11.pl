# m// in List Context

$_ = "Hello there, neighbor!";
my ($first, $second, $third) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";


my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);
print "Result: @words\n";
# Result: Fred dropped a ton granite block on Mr Slate


my $text = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %last_name = ($text =~ /(\w+)\s+(\w+)/g);
