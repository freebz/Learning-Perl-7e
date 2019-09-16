# Using Bitstrings

use v5.10;

my $number     = 137;
my $number_str = '137';
my $string     = 'Amelia';

say "number_str & string:  ", $number_str & $string;
say "number & string:      ", $number & $string;
say "number & number_str:  ", $number & $number_str;
say "number_str & string:  ", $number_str & $string;


# number_str & string:  !%
# number & string:      0
# number & number_str:  137
# number_str & string:  0


use v5.22.0;
use feature qw(bitwise);
no warnings qw(experimental::bitwise);

my $number     = 137;
my $number_str = '137';
my $string     = 'Amelia';

say "number_str & string:  ", $number_str & $string;
say "number & string:      ", $number     & $string;
say "number & number_str:  ", $number     & $number_str;
say "number_str & string:  ", $number_str & $string;


# number_str & string:  0
# number & string:      0
# number & number_str:  137
# number_str & string:  0


use v5.22.0;
use feature qw(bitwise);
no warnings qw(experimental::bitwise);

my $number     = 137;
my $number_str = '137';
my $string     = 'Amelia';

say "number_str &. string:  ", $number_str &. $string;
say "number &. string:      ", $number     &. $string;
say "number &. number_str:  ", $number     &. $number_str;
say "number_str &. string:  ", $number_str &. $string;


# number_str &. string:  !%
# number &. string:      !%
# number &. number_str:  137
# number_str &. string:  !%
