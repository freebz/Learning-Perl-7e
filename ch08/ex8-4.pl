# Combining Option Modifiers

if (/barney.*fred/is) {  # both /i and /s
  print "That string mentions Fred after Barney!\n";
}


if (m{
  barney # the little guy
  .*     # anything in between
  fred   # the loud guy
}six) {  # all three of /s and /i and /x
  print "That string mentions Fred after Barney!\n";
}
