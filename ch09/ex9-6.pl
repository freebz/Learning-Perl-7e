# Nondestructive Substitutions

my $original = 'Fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;


(my $copy = $original) =~ s/\d+ ribs?/10 ribs/;


use v5.14;

my $copy = $original =~ s/\d+ ribs?/10 ribs/r;
