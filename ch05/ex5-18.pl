# Output with say

use v5.10;

print "Hello!\n";
print "Hello!", "\n";
say "Hello!";


use v5.10;

my $name = 'Fred';
print "$name\n";
print $name, "\n";
say $name;


use v5.10;

my @array = qw( a b c d );
say @array;   # "abcd\n";
say "@array"; # "a b c d\n";


use v5.10;

say BEDROCK "Hello!";

