# Stacked File Test Operators

if (-r $filename and -w _) {
  print "THe file is both readable and writable!\n";
}


use v5.10;

if (-w -r $filename) {
  print "The file is both readable and writable!\n";
}


use v5.10;

if (-r -w -x -o -d $filename) {
  print "My directory is readable, writable, and executable!\n";
}


use v5.10;

if (-s $filename < 512) {    # WRONG! DON'T DO THIS
  say 'The directory is less than 512 bytes!';
}


if (( -d $filename and -s _) < 512) {
  print "The directory is less than 512 bytes!\n";
}


if (-d $filename and -s _ < 512) {
  print "The directory is less than 512 bytes!\n";
}
