# Anchors

if ( /\Ahttps?:/ ) {
  print "Found a URL\n";
}


if ( /\.png\z/ ) {
  print "Found a URL\n";
}


while (<STDIN>) {
  print if /\.png\Z/;
}


while (<STDIN>) {
  chomp;
  print "$_\n" if /\.png\z/;
}
