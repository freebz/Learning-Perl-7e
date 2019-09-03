# Grouping in Patterns

$_ = "abba";
if (/(.)\1/) {  # matches 'bb'
  print "It matched same character next to itself!\n";
}


$_ = "yabba dabba doo";
if (/y(....) d\1/) {
  print "It matched the same after y and d!\n";
}


$_ = "yabba dabba doo";
if (/y(.)(.)\2\1/) { # matches 'abba'
  print "It matched after the y!\n";
}


$_ = "yabba dabba doo";
if (/y((.)(.)\3\2) d\1/) {
  print "It matched!\n";
}


# (       # first open parenthesis,  \1
#    (.)  # second open parenthesis, \2
#    (.)  # third open parenthesis,  \3
#    \3
#    \2
# )


$_ = "aa11bb";
if (/(.)\111/) {
  print "It matched!\n";
}


use v5.10;

$_ = "aa11bb";
if (/(.)\g{1}11/) {
  print "It matched!\n";
}


use v5.10;

$_ = "aa11bb";
if (/(.)\g{-1}11/) {
  print "It matched!\n";
}


use v5.10;

$_ = "xaa11bb";
if (/(.)(.)\g{-1}11/) {
  print "It matched!\n";
}
