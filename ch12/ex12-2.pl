# Testing Serveral Attributes of the Same File

if (-r $filename and -w $filename) {
  ... }


if (-r $filename and -w _) {
  ... }


if (-r $filename) {
  print "The file is readable!\n";
}

if (-w _) {
  print "The file is writable!\n";
}


if (-r $filename) {
  print "The file is readable!\n";
}

lookup( $other_filename );

if (-w _) {
  print "The file is writable!\n";
}

sub lookup {
  return -w $_[0];
}
