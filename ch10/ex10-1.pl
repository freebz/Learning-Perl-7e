# The unless Control Structure

unless ($fred =~ /\A[A-Z_]\w*\z/i) {
  print "The value of \$fred doesn't look like a Perl identifier name.\n";
}


if ($fred =~ /\A[A-Z_]\w*\z/i) {
  # Do nothing
} else {
  print "The value of \$fred doesn't look like a Perl identifier name.\n";
}


if ( ! ($fred =~ /\A[A-Z_]\w*\z/i) ) {
  print "The value of \$fred doesn't look like a Perl identifier name.\n";
}
