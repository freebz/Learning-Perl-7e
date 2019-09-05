# Fancier Word Boundaries

my $string = "This doesn't capitalize correctly.";
$string =~ s/\b(\w)/\U$1/g;
print "$string\n";


# This Doesn'T Capitalize Correctly.


use v5.22;

my $string = "this doesn't capitalize correctly.";
$string =~ s/\b{wb}(\w)/\U$1/g;
print "$string\n";


# This Doesn't Capitalize Correctly.


# use v5.24;
# $string =~ s/(.{50,75}\b{lb})/$1\n/g;
