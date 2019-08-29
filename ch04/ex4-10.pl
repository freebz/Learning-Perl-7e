# The use strict Pragma

$bamm_bamm = 3;  # Perl creates that variable automatically


$bammbamm += 1;  # Oops!


use strict;  # Enforce some good programming rules


use v5.12;  # loads strict for you


my $bamm_bamm = 3;  # New lexical variable


$bammbamm += 1;  # No such variable: Compile time fatal error
