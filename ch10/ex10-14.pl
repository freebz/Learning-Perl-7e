# Labeled Block

LINE: while (<>) {
  foreach (split) {
    last LINE if /__END__/;  # bail out of the LINE loop
    ...
  }
}


LINE: while (<>) {
 WORD: foreach (split) {
    last LINE if /__END__/;  # bail out of the LINE loop
    last WORD if /EOL/;	     # skip the rest of the line
    ...
  }
}
