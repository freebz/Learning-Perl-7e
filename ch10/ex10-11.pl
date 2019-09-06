# Loop Controls

# # The last Operator

# Print all input lines mentioning fred, until the __END__ marker
while (<STDIN>) {
  if (/__END__/) {
    # No more input on or after this marker line
    last;
  } elsif (/fred/) {
    print;
  }
}
## last coms here ##
