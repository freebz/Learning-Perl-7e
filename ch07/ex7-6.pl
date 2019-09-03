# Alternatives

foreach ( qw(fred betty barney dino) ) {
  if ( /fred|barney/ ) {
    print "$_ matched\n";
  }
}


foreach ( qw(fred betty barney dino) ) {
  if ( /fred|barney|betty/ ) {
    print "$_ matched\n";
  }
}


$_ = "Fred Rubble";
if( /Fred|Wilma Flintstone/ ) {  # unexpectedly matches
  print "It matched!\n";
}


$_ = "Fred Rubble";
if( /(Fred|Wilma) Flintstone/ ) {  # doesn't match
  print "It matched!\n";
}


$_ = "fred  \t \t  barney"; #could be tabs, spaces, or both
if (/fred( |\t)+barney/) {
  print "It matched!\n";
}


$_ = "fred  \t \t barney"; # could be tabs, spaces, or both
if (/fred( +|\t+)barney/) { # all tabs or all spaces
  print "It matched!\n";
}


$_ = "fred  \t \t  wilma";
if (/fred |\tbarney/) {
  print "It matched!\n";
}


$_ = "Bamm-Bamm";
if (/Bamm-?(B|b)amm/) {
  print "The string has Bamm-Bamm\n";
}
