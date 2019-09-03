# Unicode Properties

if (/\p{Space}/) { # 25 different possible characters in v5.24
  print "The string has some whitespace.\n";
}


if (/\p{Digit}/) { # 550 different possible characters in v5.24
  print "The string has a digit.\n";
}


if (/\p{AHex}\p{AHex}/) { # 22 different possible characters
  print "The string has a pair of hex digits.\n";
}


if (/\P{Space}/) { # Not space (many many characters!)
  print "The string has one or more nonwhitespace characters.\n";
}
