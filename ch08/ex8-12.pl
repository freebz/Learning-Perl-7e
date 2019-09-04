# The Automatic Match Variables

if ("Hello there, neighbor" =~ /\s(\w+),/) {
  print "That actually matched '$&'.\n";
}


if ("Hello there, neighbor" =~ /\s(\w+),/) {
  print "That was ($`)($&)($').\n";
}


use v5.10;
if ("Hello there, neighbor" =~ /\s(\w+),/p) {
  print "That actually matched '${^MATCH}'.\n";
}

if ("Hello there, neighbor" =~ /\s(\w+),/p) {
  print "That was (${^PREMATCH})(${^MATCH})(${^POSTMATCH}).\n";
}
