# The Persistence of Capters

my $wilma = '123';
$wilma =~ /([0-9]+)/;   # Succeeds, $1 is 123
$wilma =~ /([a-zA-Z]+)/;  # BAD! Untested match result
print "Wilma's word was $1... or was it?\n";  # Still 123!


if ($wilma =~ /([a-zA-Z]+)/) {
  print "Wilma's word was $1.\n";
} else {
  print "Wilma doesn't have a word.\n";
}


if ($wilma =~ /([a-zA-Z]+)/) {
  my $wilma_word = $1;
  ...
}
