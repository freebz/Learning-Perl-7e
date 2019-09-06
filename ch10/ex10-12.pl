# The next Operator

# Analyze words in the input file or files
while (<>) {
  foreach (split) {  # break $_ into words, assign each to $_ in turn
    $total++;
    next if /\W/;    # strange words skip the remainder of the loop
    $valid++;
    $count{$_}++;    # count each separate word
    ## next comes here ##
  }
}

print "total things = $total, valid words = $valid\n";
foreach $word (sort keys %count) {
  print "$word was seen $count{$word} times.\n";
}
