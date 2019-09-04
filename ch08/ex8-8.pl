# The Match Variables

$_ = "Hello there, neighbor";
if (/\s([a-zA-Z]+),/) {    # capture the word between space and comma
  print "the word was $1\n";  # the word was there
}


$_ = "Hello there, neighbor";
if (/(\S+) (\S+), (\S+)/) {
  print "words were $1 $2 $3\n";
}


my $dino = "I fear that I'll be extinct after 1000 years.";
if ($dino =~ /([0-9]*) years/) {
  print "That said '$1' years.\n";  # 1000
}

$dino = "I fear that I'll be extinct after a few million years.";
if ($dino =~ /([0-9]*) years/) {
  print "That said '$1' years.\n";  # 1000
}
