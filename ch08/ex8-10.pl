# Noncapturing Parentheses

if (/(bronto)?saurus (steak|burger)/) {
  print "Fred wants a $2\n";
}


if (/(?:bronto)?saurus (steak|burger)/) {
  print "Fred wants a $1\n";
}


if (/(?:bronto)?saurus (?:BBQ )?(steak|burger)/) {
  print "Fred wants a $1\n";
}


if (/(?:bronto)?saurus (?:BBQ )?(?:steak|burger)/n) {
  print "It matched\n"; # there is no $1 now
}
