# Logical Operators

if ($dessert{'cake'} && $dessert{'ice cream'}) {
  # Both are true
  print "Hooray! Cake and ice cream!\n";
} elsif ($dessert{'cake'} || $dessert{'ice cream'}) {
  # At least one is true
  print "That's still good...\n";
} else {
  # Neither is true; do nothing (we're sad)
}


if ( (9 <= $hour) && ($hor < 17) ) {
  print "Aren't you supposed to be at work...?\n";
}


if ( ($name eq 'fred') || ($name eq 'barney') ) {
  print "You're my kind of guy!\n";
}


if ( ($n != 0) && ($total/$n < 5) ) {
  print "The average is below five.\n";
}
