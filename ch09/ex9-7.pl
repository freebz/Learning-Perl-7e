# Case Shifting

$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi;  # $_ is now "I saw BARNEY with FRED."


s/(fred|barney)/\L$1/gi;  # $_ is now "I saw barney with fred."


s/(\w+) with (\w+)/\U$2\E with $1/i;  # $_ is now "I saw FRED with barney."


s/(fred|barney)/\u$1/ig;  # $_ is now "I saw FRED with Barney."


s/(fred|barney)/\u\L$1/ig;  # $_ is now "I saw Fred with Barney.";


print "Hello, \L\u$name\E, would you like to play a game?\n";


my $input  = 'fRed';
my $string = 'FRED';
if( "\L$input" eq "\L$string" ) {
  print "They are the same name\n";
}


use utf8;

my $input  = 'Steinerstraẞe';
my $string = 'STEINERSTRASSE';
if ( "\L$input" eq "\L$string" ) {    # doesn't work!
  print "They are the same name\n";
}


use v5.16;

my $input  = 'Steinerstraẞe';
my $string = 'STEINERSTRASSE';
if ( "\F$input" eq "\F$string" ) {    # works
  print "They are the same name\n";
}


my $start   = "Fred";
my $uncapp  = lc( $start );	    # fred
my $uppered = uc( $uncapp );	    # FRED
my $lowered = lc( $uppered );	    # fred
my $capped  = ucfirst( $lowered );  # Fred
my $folded  = fc( $uppered );	    # fred
