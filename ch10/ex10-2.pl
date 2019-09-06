# The else Clause with unless

unless ($mon =~ /\AFeb/) {
  print "This month has at least thirty days.\n";
} else {
  print "Do you see what's going on here?\n";
}


if ($mon =~ /\AFeb/) {
  print "Do you see what's going on here?\n";
} else {
  print "This month has at least thirty days.\n";
}
