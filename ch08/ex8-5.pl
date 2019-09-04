# Choosing a Character Interpretation

use v5.14;

/\w+/a   # A-Z, a-z, 0-9, _
/\w+/u   # any Unicode word character
/\w+/l   # The ASCII version, and word chars from the locale,
         # perhaps characters like Œ from Latin-9


/k/aai   # only matches the ASCII K or k, not Kelvin sign
/k/aia   # the /a's don't need to be next to each other
/ss/aai  # only matches ASCII ss, SS, sS, Ss, not ẞ
/ff/aai  # only matches ASCII ff, FF, fF, Ff, not ﬀ


$_ = <STDIN>;

my $OE = chr( 0xBC ); # get exactly what we intend

if (/$OE/i) {         # case-insensitive? Maybe not.
  print "Found $OE\n";
}


use v5.14;

my $OE = chr( 0xBC ); # get exactly what we intend

$_ = <STDIN>;
if (/$OE/li) {    # that's better
  print "Found $OE\n";
}


use v5.14;

$_ = <STDIN>;
if (/Œ/ui) {    # now uses Unicode
  print "Found Œ\n";
}
